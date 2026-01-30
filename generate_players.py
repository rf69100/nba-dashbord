#!/usr/bin/env python3
"""
🏀 GÉNÉRATEUR DE DONNÉES JOUEURS NBA v3.0
==========================================

Script optimisé pour générer/mettre à jour les données des joueurs NBA 2024-2025.
- Parse automatiquement players_stats.txt
- Gère automatiquement les IDs NBA dans un fichier JSON séparé
- Permet l'ajout manuel facile de joueurs
- Évite les doublons intelligemment

Usage:
    python3 generate_players.py              # Mode normal (ajout incrémental)
    python3 generate_players.py --rebuild    # Reconstruire tout depuis le .txt
    python3 generate_players.py --list-missing-ids  # Lister les joueurs sans ID NBA
"""

import json
import random
import re
import sys
import argparse
from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple
from pathlib import Path


# =============================================================================
# CONFIGURATION
# =============================================================================

SCRIPT_DIR = Path(__file__).parent
STATS_FILE = SCRIPT_DIR / "players_stats.txt"
NBA_DATA_FILE = SCRIPT_DIR / "src" / "services" / "nbaData.js"
PLAYER_IDS_FILE = SCRIPT_DIR / "player_nba_ids.json"
PLAYER_PROFILES_FILE = SCRIPT_DIR / "player_profiles.json"

# Mapping équipe abréviation -> nom de fichier logo
TEAM_LOGOS: Dict[str, str] = {
    "OKC": "oklahoma-city-thunder",
    "MIN": "minnesota-timberwolves",
    "DEN": "denver-nuggets",
    "MIL": "milwaukee-bucks",
    "BOS": "boston-celtics",
    "PHX": "phoenix-suns",
    "PHO": "phoenix-suns",
    "ATL": "atlanta-hawks",
    "MIA": "miami-heat",
    "DET": "detroit-pistons",
    "LAC": "los-angeles-clippers",
    "CHI": "chicago-bulls",
    "HOU": "houston-rockets",
    "GSW": "golden-state-warriors",
    "LAL": "los-angeles-lakers",
    "CLE": "cleveland-cavaliers",
    "NYK": "new-york-knicks",
    "MEM": "memphis-grizzlies",
    "IND": "indiana-pacers",
    "SAC": "sacramento-kings",
    "ORL": "orlando-magic",
    "WAS": "washington-wizards",
    "DAL": "dallas-mavericks",
    "POR": "portland-trail-blazers",
    "BRK": "brooklyn-nets",
    "NOP": "new-orleans-pelicans",
    "SAS": "san-antonio-spurs",
    "UTA": "utah-jazz",
    "TOR": "toronto-raptors",
    "CHO": "charlotte-hornets",
    "PHI": "philadelphia-76ers",
}

# Mapping équipe abréviation -> nom complet
TEAM_NAMES: Dict[str, str] = {
    "OKC": "Oklahoma City Thunder",
    "MIN": "Minnesota Timberwolves",
    "DEN": "Denver Nuggets",
    "MIL": "Milwaukee Bucks",
    "BOS": "Boston Celtics",
    "PHX": "Phoenix Suns",
    "PHO": "Phoenix Suns",
    "ATL": "Atlanta Hawks",
    "MIA": "Miami Heat",
    "DET": "Detroit Pistons",
    "LAC": "Los Angeles Clippers",
    "CHI": "Chicago Bulls",
    "HOU": "Houston Rockets",
    "GSW": "Golden State Warriors",
    "LAL": "Los Angeles Lakers",
    "CLE": "Cleveland Cavaliers",
    "NYK": "New York Knicks",
    "MEM": "Memphis Grizzlies",
    "IND": "Indiana Pacers",
    "SAC": "Sacramento Kings",
    "ORL": "Orlando Magic",
    "WAS": "Washington Wizards",
    "DAL": "Dallas Mavericks",
    "POR": "Portland Trail Blazers",
    "BRK": "Brooklyn Nets",
    "NOP": "New Orleans Pelicans",
    "SAS": "San Antonio Spurs",
    "UTA": "Utah Jazz",
    "TOR": "Toronto Raptors",
    "CHO": "Charlotte Hornets",
    "PHI": "Philadelphia 76ers",
}

# Position mapping
POSITION_MAP: Dict[str, str] = {
    "PG": "Guard",
    "SG": "Guard",
    "SF": "Forward",
    "PF": "Forward",
    "C": "Center",
    "G": "Guard",
    "F": "Forward",
}

# Mapping manuel des joueurs échangés (2TM/3TM) vers leur équipe actuelle (2024-2025)
# Source: Vérification manuelle des trades NBA
TRADED_PLAYERS_TEAM: Dict[str, str] = {
    "Zach LaVine": "CHI",          # Resté à Chicago (trade annulé)
    "De'Aaron Fox": "SAC",          # Échangé puis revenu
    "Luka Dončić": "LAL",           # Trade vers Lakers
    "Anthony Davis": "LAL",         # Resté aux Lakers
    "Quentin Grimes": "DAL",        # Trade vers Dallas
    "De'Andre Hunter": "MIL",       # Trade vers Milwaukee
    "Andrew Wiggins": "GSW",        # Resté à Golden State
    "Dennis Schröder": "GSW",       # 3TM - Signé avec Warriors
    "Jimmy Butler": "PHX",          # Trade vers Phoenix
    "Kyle Kuzma": "DAL",            # Trade vers Dallas
    "Jonas Valančiūnas": "WAS",     # Signé avec Washington
    "Georges Niang": "CLE",         # Signé avec Cleveland
    "Caris LeVert": "CLE",          # Trade vers Cleveland
    "Kevin Porter Jr.": "LAC",      # Signé avec Clippers
    "Max Christie": "LAL",          # Resté aux Lakers
    "D'Angelo Russell": "LAL",      # Resté aux Lakers
    "Kevin Huerter": "SAC",         # Resté à Sacramento
    "Davion Mitchell": "TOR",       # Trade vers Toronto
    "Bogdan Bogdanović": "ATL",     # Resté à Atlanta
    "Dorian Finney-Smith": "LAL",   # Trade vers Lakers
    "Jared Butler": "MIA",          # Signé avec Miami
    "Nick Richards": "PHX",         # Trade vers Phoenix
    "Terance Mann": "LAC",          # Resté aux Clippers
    "Jusuf Nurkić": "PHX",          # Resté à Phoenix
    "Khris Middleton": "MIL",       # Resté à Milwaukee
    "Thomas Bryant": "IND",         # Signé avec Indiana
    "Zach Collins": "SAS",          # Resté aux Spurs
    "Kelly Olynyk": "TOR",          # Resté à Toronto
    "Kyle Anderson": "MIN",         # Resté à Minnesota
    "Caleb Martin": "PHI",          # Signé avec Philadelphie
    "Javonte Green": "CHI",         # Resté à Chicago
    "Bruce Brown": "TOR",           # Resté à Toronto
    "Tre Jones": "SAS",             # Resté aux Spurs
    "Shake Milton": "BRK",          # Signé avec Brooklyn
    "Orlando Robinson": "MIA",      # Resté à Miami
    "Josh Okogie": "PHX",           # Resté à Phoenix
    "Drew Eubanks": "PHX",          # Resté à Phoenix
    "Vasilije Micić": "CHO",        # Signé avec Charlotte (CHO = Charlotte Hornets)
    "Ben Simmons": "BRK",           # Resté à Brooklyn
    "AJ Johnson": "BRK",            # Signé avec Brooklyn
    "Kai Jones": "LAC",             # Signé avec Clippers
    "Colby Jones": "SAC",           # Resté à Sacramento
    "David Roddy": "PHX",           # 3TM - Signé avec Phoenix
    "Bones Hyland": "LAC",          # Signé avec Clippers
    "Mo Bamba": "PHI",              # Signé avec Philadelphie
    "Marvin Bagley III": "SAC",     # Resté à Sacramento
    "Delon Wright": "MIL",          # Signé avec Milwaukee
    "Colin Castleton": "LAL",       # 3TM - Signé avec Lakers
    "Jared Rhoden": "NOP",          # Signé avec Pelicans
    "Maxwell Lewis": "LAL",         # Resté aux Lakers
    "Patty Mills": "UTA",           # Signé avec Utah
    "Torrey Craig": "CHI",          # Signé avec Chicago
    "Jalen Hood-Schifino": "LAL",   # Resté aux Lakers
    "Reece Beekman": "BRK",         # Draft par Brooklyn
    "Elfrid Payton": "PHX",         # Signé avec Phoenix
    "MarJon Beauchamp": "IND",      # 3TM - Trade vers Indiana
    "Jaylen Martin": "BRK",         # Signé avec Brooklyn
    "Moses Brown": "POR",           # Signé avec Portland
    "JT Thor": "CHO",               # Resté à Charlotte (CHO = Charlotte Hornets)
    "Cole Swider": "MIA",           # Signé avec Miami
    "Markieff Morris": "DAL",       # Signé avec Dallas
    "Patrick Baldwin Jr.": "GSW",   # Resté à Golden State
    "Pete Nance": "CLE",            # Signé avec Cleveland
    "Kylor Kelley": "SAS",          # Two-way Spurs
    "Sidy Cissoko": "SAS",          # Resté aux Spurs
    "Jacob Toppin": "NYK",          # Resté aux Knicks
    "Tristen Newton": "LAC",        # Two-way Clippers
}


# =============================================================================
# GESTION DES IDs NBA (fichier JSON séparé)
# =============================================================================

def load_player_ids() -> Dict[str, int]:
    """Charge les IDs NBA depuis le fichier JSON"""
    if PLAYER_IDS_FILE.exists():
        try:
            with open(PLAYER_IDS_FILE, 'r', encoding='utf-8') as f:
                return json.load(f)
        except json.JSONDecodeError:
            print(f"⚠️  Erreur lecture {PLAYER_IDS_FILE.name}, utilisation des valeurs par défaut")
    
    # IDs par défaut pour les joueurs les plus connus
    return {
        "Shai Gilgeous-Alexander": 1628983,
        "Anthony Edwards": 1630162,
        "Nikola Jokic": 203999,
        "Giannis Antetokounmpo": 203507,
        "Jayson Tatum": 1628369,
        "Devin Booker": 1626164,
        "Trae Young": 1629027,
        "Tyler Herro": 1629639,
        "Cade Cunningham": 1630595,
        "James Harden": 201935,
        "Karl-Anthony Towns": 1626157,
        "Zach LaVine": 203897,
        "Jalen Green": 1630224,
        "Stephen Curry": 201939,
        "DeMar DeRozan": 201942,
        "LeBron James": 2544,
        "Donovan Mitchell": 1628378,
        "Jalen Brunson": 1628973,
        "Kevin Durant": 201142,
        "Jaren Jackson Jr.": 1628991,
        "Pascal Siakam": 1627783,
        "Darius Garland": 1629636,
        "Coby White": 1629632,
        "Jalen Williams": 1631114,
        "Austin Reaves": 1630559,
        "De'Aaron Fox": 1628368,
        "Alperen Sengun": 1630578,
        "Franz Wagner": 1630532,
        "Damian Lillard": 203081,
        "Mikal Bridges": 1628969,
        "Jamal Murray": 1627750,
        "Bam Adebayo": 1628389,
        "Luka Doncic": 1629029,
        "Jaylen Brown": 1627759,
        "Michael Porter Jr.": 1629008,
        "Jordan Poole": 1629673,
        "Tyrese Haliburton": 1630169,
        "Nikola Vucevic": 202696,
        "Anfernee Simons": 1629014,
        "Ivica Zubac": 1627826,
        "Domantas Sabonis": 1627734,
        "Victor Wembanyama": 1641705,
    }


def load_player_profiles() -> Dict[str, Dict]:
    """Charge les profils de joueurs depuis player_profiles.json"""
    if PLAYER_PROFILES_FILE.exists():
        try:
            with open(PLAYER_PROFILES_FILE, 'r', encoding='utf-8') as f:
                return json.load(f)
        except json.JSONDecodeError:
            print(f"⚠️  Erreur lecture {PLAYER_PROFILES_FILE.name}")
    return {}


def save_player_ids(player_ids: Dict[str, int]) -> None:
    """Sauvegarde les IDs NBA dans le fichier JSON (trié alphabétiquement)"""
    sorted_ids = dict(sorted(player_ids.items(), key=lambda x: x[0]))
    with open(PLAYER_IDS_FILE, 'w', encoding='utf-8') as f:
        json.dump(sorted_ids, f, indent=2, ensure_ascii=False)
    print(f"   💾 {PLAYER_IDS_FILE.name} mis à jour ({len(sorted_ids)} joueurs)")


def sync_player_ids_with_stats(player_ids: Dict[str, int]) -> Tuple[int, int]:
    """
    Synchronise player_nba_ids.json avec players_stats.txt.
    - Ajoute les nouveaux joueurs (ID=0)
    - Retire les joueurs qui n'existent plus dans stats
    Retourne (ajoutés, retirés)
    """
    if not STATS_FILE.exists():
        return 0, 0
    
    # Récupérer tous les noms du fichier stats
    stats_players = set()
    with open(STATS_FILE, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            parts = line.strip().split('\t')
            if len(parts) >= 2 and parts[0].isdigit():
                name = parts[1].strip()
                if name:
                    stats_players.add(name)
    
    # Joueurs à ajouter (dans stats mais pas dans IDs)
    added = 0
    for name in stats_players:
        if name not in player_ids:
            player_ids[name] = 0
            added += 1
    
    # Joueurs à retirer (dans IDs mais pas dans stats) - optionnel, commenté par défaut
    # Décommentez si vous voulez nettoyer les joueurs obsolètes
    # removed = 0
    # ids_to_remove = [name for name in player_ids if name not in stats_players]
    # for name in ids_to_remove:
    #     del player_ids[name]
    #     removed += 1
    removed = 0
    
    return added, removed


def get_player_nba_id(name: str, player_ids: Dict[str, int]) -> int:
    """Récupère l'ID NBA d'un joueur (0 si non trouvé)"""
    return player_ids.get(name, 0)


# =============================================================================
# DATA CLASSES
# =============================================================================

@dataclass
class PlayerStats:
    """Statistiques d'un joueur pour une saison"""
    G: int = 0
    GS: int = 0
    MP: int = 0
    FG: int = 0
    FGA: int = 0
    FG_PCT: float = 0.0
    P3: int = 0
    P3A: int = 0
    P3_PCT: float = 0.0
    FT: int = 0
    FTA: int = 0
    FT_PCT: float = 0.0
    ORB: int = 0
    DRB: int = 0
    TRB: int = 0
    AST: int = 0
    STL: int = 0
    BLK: int = 0
    TOV: int = 0
    PF: int = 0
    PTS: int = 0


@dataclass
class Player:
    """Représentation complète d'un joueur"""
    name: str
    team_abbr: str
    age: int
    position: str
    stats: PlayerStats
    rank: int = 0
    awards: str = ""
    nba_id: int = 0
    jersey: int = 0
    
    @property
    def team_name(self) -> str:
        return TEAM_NAMES.get(self.team_abbr, self.team_abbr)
    
    @property
    def position_full(self) -> str:
        return POSITION_MAP.get(self.position, self.position)
    
    @property
    def team_logo_url(self) -> str:
        logo_name = TEAM_LOGOS.get(self.team_abbr, self.team_abbr.lower())
        return f"/images/nba-logos/{logo_name}.svg"
    
    def photo_url(self, player_ids: Dict[str, int]) -> str:
        nba_id = get_player_nba_id(self.name, player_ids)
        return f"https://cdn.nba.com/headshots/nba/latest/1040x760/{nba_id}.png"


# =============================================================================
# PARSING DU FICHIER STATS
# =============================================================================

def parse_float(value: str) -> float:
    """Parse une valeur flottante, gère les valeurs vides"""
    try:
        return float(value) if value.strip() else 0.0
    except ValueError:
        return 0.0


def parse_int(value: str) -> int:
    """Parse une valeur entière, gère les valeurs vides"""
    try:
        return int(value) if value.strip() else 0
    except ValueError:
        return 0


def is_header_line(line: str) -> bool:
    """Vérifie si la ligne est un en-tête"""
    return line.startswith("Rk") or "Player" in line[:20]


def parse_player_line(line: str) -> Optional[Tuple[Player, bool]]:
    """Parse une ligne du fichier players_stats.txt"""
    line = line.strip().replace('\r', '')
    
    if not line or is_header_line(line):
        return None
    
    parts = line.split('\t')
    
    if len(parts) < 29:
        return None
    
    try:
        rank = parse_int(parts[0])
        name = parts[1].strip()
        age = parse_int(parts[2])
        team = parts[3].strip()
        pos = parts[4].strip()
        
        # Joueur ayant joué pour plusieurs équipes cette saison
        is_multi_team = team in ("2TM", "3TM", "4TM")
        
        stats = PlayerStats(
            G=parse_int(parts[5]),
            GS=parse_int(parts[6]),
            MP=parse_int(parts[7]),
            FG=parse_int(parts[8]),
            FGA=parse_int(parts[9]),
            FG_PCT=parse_float(parts[10]),
            P3=parse_int(parts[11]),
            P3A=parse_int(parts[12]),
            P3_PCT=parse_float(parts[13]),
            FT=parse_int(parts[18]),
            FTA=parse_int(parts[19]),
            FT_PCT=parse_float(parts[20]),
            ORB=parse_int(parts[21]),
            DRB=parse_int(parts[22]),
            TRB=parse_int(parts[23]),
            AST=parse_int(parts[24]),
            STL=parse_int(parts[25]),
            BLK=parse_int(parts[26]),
            TOV=parse_int(parts[27]),
            PF=parse_int(parts[28]),
            PTS=parse_int(parts[29]),
        )
        
        player = Player(
            name=name,
            team_abbr=team,
            age=age,
            position=pos,
            stats=stats,
            rank=rank,
        )
        
        return (player, is_multi_team)
        
    except (IndexError, ValueError) as e:
        print(f"⚠️  Erreur parsing: {line[:50]}... ({e})")
        return None


def parse_stats_file(filepath: Path) -> List[Player]:
    """
    Parse le fichier players_stats.txt complet.
    Gère les joueurs échangés (2TM/3TM) via le mapping TRADED_PLAYERS_TEAM.
    """
    players: List[Player] = []
    current_multi_team: Optional[Player] = None
    last_team_for_multi: str = ""
    
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            result = parse_player_line(line)
            if result is None:
                continue
            
            player, is_multi_team = result
            
            if is_multi_team:
                current_multi_team = player
                last_team_for_multi = ""
            elif current_multi_team and player.name == current_multi_team.name:
                last_team_for_multi = player.team_abbr
            else:
                if current_multi_team:
                    # Utiliser le mapping manuel si disponible, sinon la dernière équipe trouvée
                    if current_multi_team.name in TRADED_PLAYERS_TEAM:
                        current_multi_team.team_abbr = TRADED_PLAYERS_TEAM[current_multi_team.name]
                    elif last_team_for_multi:
                        current_multi_team.team_abbr = last_team_for_multi
                    else:
                        current_multi_team.team_abbr = "UNK"
                    players.append(current_multi_team)
                    current_multi_team = None
                
                players.append(player)
    
    # Gérer le dernier joueur multi-équipe
    if current_multi_team:
        if current_multi_team.name in TRADED_PLAYERS_TEAM:
            current_multi_team.team_abbr = TRADED_PLAYERS_TEAM[current_multi_team.name]
        elif last_team_for_multi:
            current_multi_team.team_abbr = last_team_for_multi
        else:
            current_multi_team.team_abbr = "UNK"
        players.append(current_multi_team)
    
    return players


# =============================================================================
# GÉNÉRATION DE DONNÉES
# =============================================================================

def generate_game_stats(stats: PlayerStats) -> Dict:
    """Génère des stats cohérentes pour un match"""
    
    if stats.G == 0:
        return {
            "PTS": 0, "REB": 0, "AST": 0, "STL": 0, "BLK": 0,
            "FG": 0, "FGA": 0, "3P": 0, "3PA": 0, "FT": 0, "FTA": 0
        }
    
    # Moyennes par match
    avg_fga = stats.FGA / stats.G
    avg_3pa = stats.P3A / stats.G
    avg_fta = stats.FTA / stats.G
    avg_reb = stats.TRB / stats.G
    avg_ast = stats.AST / stats.G
    avg_stl = stats.STL / stats.G
    avg_blk = stats.BLK / stats.G
    
    # Pourcentages
    fg_pct = stats.FG / stats.FGA if stats.FGA > 0 else 0.45
    three_pct = stats.P3 / stats.P3A if stats.P3A > 0 else 0.35
    ft_pct = stats.FT / stats.FTA if stats.FTA > 0 else 0.75
    
    # Variation ±20%
    variance = 0.80 + random.random() * 0.40
    
    fga = max(int(avg_fga * variance), 3)
    fg = max(min(int(fga * fg_pct * variance), fga), 1)
    
    three_pa = max(int(avg_3pa * variance), 0)
    three_p = max(min(int(three_pa * three_pct * variance), three_pa), 0)
    
    fta = max(int(avg_fta * variance), 0)
    ft = max(min(int(fta * ft_pct * variance), fta), 0)
    
    reb = max(int(avg_reb * variance), 1)
    ast = max(int(avg_ast * variance), 0)
    stl = max(int(avg_stl * variance), 0)
    blk = max(int(avg_blk * variance), 0)
    
    pts = (fg - three_p) * 2 + three_p * 3 + ft
    
    return {
        "PTS": pts, "REB": reb, "AST": ast, "STL": stl, "BLK": blk,
        "FG": fg, "FGA": fga, "3P": three_p, "3PA": three_pa, "FT": ft, "FTA": fta
    }


def player_to_js_object(player: Player, player_id: int, player_ids: Dict[str, int], player_profiles: Dict[str, Dict]) -> Dict:
    """Convertit un Player en objet JavaScript pour nbaData.js"""
    
    stats = player.stats
    last_games = [generate_game_stats(stats) for _ in range(10)]
    
    # Récupérer le profil du joueur s'il existe
    profile = player_profiles.get(player.name, {})
    
    # Construire l'objet de base
    player_obj = {
        "id": player_id,
        "name": player.name,
        "display_name": player.name,
        "team": player.team_name,
        "team_name": player.team_name,
        "team_abbreviation": player.team_abbr,
        "team_logo_url": player.team_logo_url,
        "jersey_number": player.jersey,
        "nationality": profile.get("nationality", "USA"),
        "birth_date": profile.get("birth_date", ""),
        "age": player.age,
        "height_cm": profile.get("height_cm", 0),
        "weight_kg": profile.get("weight_kg", 0),
        "position": player.position_full,
        "photo_url": player.photo_url(player_ids),
        "season_stats": {
            "GP": stats.G,
            "GS": stats.GS,
            "MP": stats.MP,
            "FG": stats.FG,
            "FGA": stats.FGA,
            "FG%": round(stats.FG_PCT, 3),
            "3P": stats.P3,
            "3PA": stats.P3A,
            "3P%": round(stats.P3_PCT, 3),
            "FT": stats.FT,
            "FTA": stats.FTA,
            "FT%": round(stats.FT_PCT, 3),
            "ORB": stats.ORB,
            "DRB": stats.DRB,
            "TRB": stats.TRB,
            "AST": stats.AST,
            "STL": stats.STL,
            "BLK": stats.BLK,
            "TOV": stats.TOV,
            "PF": stats.PF,
            "PTS": stats.PTS,
        },
        "lastGames": last_games,
        "awards": player.awards,
    }
    
    # Ajouter draft_year et draft_pick si disponibles dans le profil
    if profile.get("draft_year"):
        player_obj["draft_year"] = profile["draft_year"]
    if profile.get("draft_pick"):
        player_obj["draft_pick"] = profile["draft_pick"]
    
    return player_obj


# =============================================================================
# LECTURE/ÉCRITURE nbaData.js
# =============================================================================

def read_existing_players(filepath: Path) -> List[Dict]:
    """Lit les joueurs existants dans nbaData.js"""
    if not filepath.exists():
        return []
    
    content = filepath.read_text(encoding='utf-8')
    
    match = re.search(r'export const players = (\[.*?\]);', content, re.DOTALL)
    if not match:
        return []
    
    try:
        players_json = match.group(1)
        players_json = re.sub(r',(\s*[}\]])', r'\1', players_json)
        return json.loads(players_json)
    except json.JSONDecodeError as e:
        print(f"⚠️  Erreur parsing nbaData.js: {e}")
        return []


def update_nba_data_file(filepath: Path, players_js: List[Dict]) -> bool:
    """Remplace la section players dans nbaData.js"""
    
    if not filepath.exists():
        print(f"⚠️  Fichier non trouvé: {filepath}")
        return False
    
    content = filepath.read_text(encoding='utf-8')
    
    players_json = json.dumps(players_js, indent=2, ensure_ascii=False)
    new_section = f"export const players = {players_json};"
    
    pattern = re.compile(r'export const players = \[.*?\];', re.DOTALL)
    if not pattern.search(content):
        print("⚠️  'export const players' non trouvé dans nbaData.js")
        return False
    
    new_content = pattern.sub(new_section, content)
    if not new_content.endswith('\n'):
        new_content += '\n'
    
    filepath.write_text(new_content, encoding='utf-8')
    return True


# =============================================================================
# COMMANDES PRINCIPALES
# =============================================================================

def cmd_rebuild(player_ids: Dict[str, int]) -> None:
    """Reconstruit entièrement nbaData.js depuis players_stats.txt"""
    print("\n🔄 MODE REBUILD - Reconstruction complète depuis le fichier .txt")
    
    if not STATS_FILE.exists():
        print(f"❌ Fichier stats non trouvé: {STATS_FILE}")
        return
    
    # Synchroniser d'abord les IDs avec le fichier stats
    print(f"\n🔗 Synchronisation de {PLAYER_IDS_FILE.name}...")
    added, removed = sync_player_ids_with_stats(player_ids)
    if added > 0 or removed > 0:
        save_player_ids(player_ids)
        print(f"   → {added} joueurs ajoutés, {removed} retirés")
    else:
        print(f"   → Déjà synchronisé")
    
    # Charger les profils de joueurs
    player_profiles = load_player_profiles()
    if player_profiles:
        print(f"\n👤 {len(player_profiles)} profils chargés depuis {PLAYER_PROFILES_FILE.name}")
    
    # Parser le fichier
    print(f"\n📊 Parsing de {STATS_FILE.name}...")
    players = parse_stats_file(STATS_FILE)
    print(f"   → {len(players)} joueurs trouvés")
    
    # Générer les objets JS
    print(f"\n⚙️  Génération des données...")
    players_js = []
    for idx, player in enumerate(players, 1):
        player_js = player_to_js_object(player, idx, player_ids, player_profiles)
        players_js.append(player_js)
    
    # Trier par PTS décroissant
    players_js.sort(key=lambda p: p.get('season_stats', {}).get('PTS', 0), reverse=True)
    
    # Réattribuer les IDs
    for idx, player in enumerate(players_js, 1):
        player['id'] = idx
    
    # Mettre à jour le fichier
    print(f"\n💾 Mise à jour de {NBA_DATA_FILE.name}...")
    if update_nba_data_file(NBA_DATA_FILE, players_js):
        print(f"   ✅ {len(players_js)} joueurs générés")
    else:
        print("   ❌ Échec de la mise à jour")
        return
    
    # Résumé
    print_summary([], players_js)


def cmd_incremental(player_ids: Dict[str, int]) -> None:
    """Mode incrémental - ajoute uniquement les nouveaux joueurs"""
    print("\n➕ MODE INCRÉMENTAL - Ajout des nouveaux joueurs uniquement")
    
    if not STATS_FILE.exists():
        print(f"❌ Fichier stats non trouvé: {STATS_FILE}")
        return
    
    # Synchroniser d'abord les IDs avec le fichier stats
    print(f"\n🔗 Synchronisation de {PLAYER_IDS_FILE.name}...")
    added_ids, removed_ids = sync_player_ids_with_stats(player_ids)
    if added_ids > 0 or removed_ids > 0:
        save_player_ids(player_ids)
        print(f"   → {added_ids} joueurs ajoutés aux IDs")
    else:
        print(f"   → Déjà synchronisé")
    
    # Lire les joueurs existants
    print(f"\n📖 Lecture de {NBA_DATA_FILE.name}...")
    existing_players = read_existing_players(NBA_DATA_FILE)
    existing_names = {p.get('name', '') for p in existing_players}
    print(f"   → {len(existing_players)} joueurs existants")
    
    # Parser le fichier stats
    print(f"\n📊 Parsing de {STATS_FILE.name}...")
    new_players = parse_stats_file(STATS_FILE)
    print(f"   → {len(new_players)} joueurs dans le fichier")
    
    # Filtrer les nouveaux joueurs
    players_to_add = [p for p in new_players if p.name not in existing_names]
    print(f"   → {len(players_to_add)} nouveaux joueurs à ajouter")
    
    if not players_to_add:
        print("\n✅ Tous les joueurs sont déjà présents!")
        return
    
    # Charger les profils de joueurs
    player_profiles = load_player_profiles()
    if player_profiles:
        print(f"\n👤 {len(player_profiles)} profils chargés")
    
    # Générer les objets JS
    print(f"\n⚙️  Génération des données...")
    next_id = max((p.get('id', 0) for p in existing_players), default=0) + 1
    
    new_players_js = []
    for player in players_to_add:
        player_js = player_to_js_object(player, next_id, player_ids, player_profiles)
        new_players_js.append(player_js)
        next_id += 1
    
    # Fusionner et trier
    all_players = existing_players + new_players_js
    all_players.sort(key=lambda p: p.get('season_stats', {}).get('PTS', 0), reverse=True)
    
    for idx, player in enumerate(all_players, 1):
        player['id'] = idx
    
    # Mettre à jour
    print(f"\n💾 Mise à jour de {NBA_DATA_FILE.name}...")
    if update_nba_data_file(NBA_DATA_FILE, all_players):
        print(f"   ✅ {len(all_players)} joueurs au total")
    else:
        print("   ❌ Échec de la mise à jour")
        return
    
    print_summary(existing_players, all_players)


def cmd_list_missing_ids(player_ids: Dict[str, int]) -> None:
    """Liste les joueurs qui n'ont pas d'ID NBA"""
    print("\n🔍 JOUEURS SANS ID NBA (photo par défaut)")
    print("=" * 60)
    
    missing = [(name, nba_id) for name, nba_id in player_ids.items() if nba_id == 0]
    missing.sort(key=lambda x: x[0])
    
    if not missing:
        print("✅ Tous les joueurs ont un ID NBA!")
        return
    
    print(f"📋 {len(missing)} joueurs sans ID:\n")
    for name, _ in missing:
        print(f"   • {name}")
    
    print(f"\n💡 Pour ajouter les IDs, éditez: {PLAYER_IDS_FILE}")
    print("   Source des IDs: https://cdn.nba.com/headshots/nba/latest/1040x760/{ID}.png")


def print_summary(existing: List, final: List) -> None:
    """Affiche un résumé de l'opération"""
    print("\n" + "=" * 60)
    print("📈 RÉSUMÉ")
    print("=" * 60)
    print(f"Joueurs avant:   {len(existing)}")
    print(f"Joueurs après:   {len(final)}")
    print(f"Ajoutés:         {len(final) - len(existing)}")
    
    if final:
        print(f"\nPremier: {final[0]['name']} ({final[0]['team_abbreviation']}) - {final[0]['season_stats']['PTS']} PTS")
        print(f"Dernier: {final[-1]['name']} ({final[-1]['team_abbreviation']}) - {final[-1]['season_stats']['PTS']} PTS")
    
    print("\n✨ Terminé!")


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(
        description="🏀 Générateur de données joueurs NBA",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Exemples:
  python3 generate_players.py              # Mode incrémental (par défaut)
  python3 generate_players.py --rebuild    # Tout reconstruire depuis le .txt
  python3 generate_players.py --list-missing-ids  # Voir les joueurs sans photo

Fichiers:
  players_stats.txt    - Données source (depuis Basketball Reference)
  player_nba_ids.json  - IDs NBA pour les photos (éditable manuellement)
  src/services/nbaData.js - Fichier de sortie
        """
    )
    parser.add_argument('--rebuild', action='store_true', 
                        help='Reconstruit tout depuis players_stats.txt')
    parser.add_argument('--list-missing-ids', action='store_true',
                        help='Liste les joueurs sans ID NBA')
    
    args = parser.parse_args()
    
    print("=" * 60)
    print("🏀 GÉNÉRATEUR DE DONNÉES JOUEURS NBA v3.0")
    print("=" * 60)
    
    # Charger les IDs
    player_ids = load_player_ids()
    print(f"📂 {len(player_ids)} IDs NBA chargés depuis {PLAYER_IDS_FILE.name}")
    
    if args.list_missing_ids:
        cmd_list_missing_ids(player_ids)
    elif args.rebuild:
        cmd_rebuild(player_ids)
    else:
        cmd_incremental(player_ids)


if __name__ == "__main__":
    main()
