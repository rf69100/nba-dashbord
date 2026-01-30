#!/usr/bin/env python3
"""
🏀 SCRIPT D'AJOUT DE JOUEUR NBA
================================

Script interactif pour ajouter un joueur individuellement à players_stats.txt.
Le joueur sera ensuite automatiquement intégré par generate_players.py.

Usage:
    python3 add_player.py              # Mode interactif
    python3 add_player.py --help       # Aide
"""

import sys
import json
from pathlib import Path
from typing import Optional, Tuple, List, Dict


# =============================================================================
# CONFIGURATION
# =============================================================================

SCRIPT_DIR = Path(__file__).parent
STATS_FILE = SCRIPT_DIR / "players_stats.txt"
PLAYER_IDS_FILE = SCRIPT_DIR / "player_nba_ids.json"

# Équipes NBA valides
VALID_TEAMS = {
    "ATL": "Atlanta Hawks",
    "BOS": "Boston Celtics",
    "BRK": "Brooklyn Nets",
    "CHO": "Charlotte Hornets",
    "CHI": "Chicago Bulls",
    "CLE": "Cleveland Cavaliers",
    "DAL": "Dallas Mavericks",
    "DEN": "Denver Nuggets",
    "DET": "Detroit Pistons",
    "GSW": "Golden State Warriors",
    "HOU": "Houston Rockets",
    "IND": "Indiana Pacers",
    "LAC": "Los Angeles Clippers",
    "LAL": "Los Angeles Lakers",
    "MEM": "Memphis Grizzlies",
    "MIA": "Miami Heat",
    "MIL": "Milwaukee Bucks",
    "MIN": "Minnesota Timberwolves",
    "NOP": "New Orleans Pelicans",
    "NYK": "New York Knicks",
    "OKC": "Oklahoma City Thunder",
    "ORL": "Orlando Magic",
    "PHI": "Philadelphia 76ers",
    "PHO": "Phoenix Suns",
    "POR": "Portland Trail Blazers",
    "SAC": "Sacramento Kings",
    "SAS": "San Antonio Spurs",
    "TOR": "Toronto Raptors",
    "UTA": "Utah Jazz",
    "WAS": "Washington Wizards",
}

VALID_POSITIONS = ["PG", "SG", "SF", "PF", "C", "G", "F"]


# =============================================================================
# VALIDATION
# =============================================================================

def validate_name(name: str) -> Tuple[bool, str]:
    """Valide le nom d'un joueur"""
    name = name.strip()
    if not name:
        return False, "Le nom ne peut pas être vide"
    if len(name) < 3:
        return False, "Le nom doit contenir au moins 3 caractères"
    if len(name) > 50:
        return False, "Le nom est trop long (max 50 caractères)"
    if '\t' in name:
        return False, "Le nom ne peut pas contenir de tabulation"
    return True, name


def validate_team(team: str) -> Tuple[bool, str]:
    """Valide l'abréviation d'équipe"""
    team = team.strip().upper()
    if team not in VALID_TEAMS:
        teams_list = ", ".join(sorted(VALID_TEAMS.keys()))
        return False, f"Équipe invalide. Équipes valides: {teams_list}"
    return True, team


def validate_position(pos: str) -> Tuple[bool, str]:
    """Valide la position"""
    pos = pos.strip().upper()
    if pos not in VALID_POSITIONS:
        return False, f"Position invalide. Positions valides: {', '.join(VALID_POSITIONS)}"
    return True, pos


def validate_age(age: str) -> Tuple[bool, int]:
    """Valide l'âge"""
    try:
        age_int = int(age.strip())
        if age_int < 18 or age_int > 50:
            return False, "L'âge doit être entre 18 et 50 ans"
        return True, age_int
    except ValueError:
        return False, "L'âge doit être un nombre entier"


def validate_int(value: str, field_name: str, min_val: int = 0, max_val: int = 10000) -> Tuple[bool, int]:
    """Valide une valeur entière"""
    try:
        val = int(value.strip()) if value.strip() else 0
        if val < min_val or val > max_val:
            return False, f"{field_name} doit être entre {min_val} et {max_val}"
        return True, val
    except ValueError:
        return False, f"{field_name} doit être un nombre entier"


def validate_percentage(value: str, field_name: str) -> Tuple[bool, float]:
    """Valide un pourcentage (0.000 à 1.000)"""
    try:
        val = float(value.strip()) if value.strip() else 0.0
        if val < 0 or val > 1:
            return False, f"{field_name} doit être entre 0 et 1 (ex: 0.450 pour 45%)"
        return True, val
    except ValueError:
        return False, f"{field_name} doit être un nombre décimal (ex: 0.450)"


# =============================================================================
# FONCTIONS UTILITAIRES
# =============================================================================

def get_existing_players() -> List[str]:
    """Récupère la liste des joueurs existants"""
    if not STATS_FILE.exists():
        return []
    
    players = []
    with open(STATS_FILE, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            parts = line.strip().split('\t')
            if len(parts) >= 2 and parts[0].isdigit():
                players.append(parts[1].strip())
    return players


def get_next_rank() -> int:
    """Détermine le prochain rang disponible"""
    if not STATS_FILE.exists():
        return 1
    
    max_rank = 0
    with open(STATS_FILE, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            parts = line.strip().split('\t')
            if len(parts) >= 1 and parts[0].isdigit():
                rank = int(parts[0])
                max_rank = max(max_rank, rank)
    return max_rank + 1


def prompt(message: str, validator, default: str = "") -> any:
    """Demande une entrée utilisateur avec validation"""
    while True:
        suffix = f" [{default}]" if default else ""
        user_input = input(f"{message}{suffix}: ").strip()
        
        if not user_input and default:
            user_input = default
        
        valid, result = validator(user_input)
        if valid:
            return result
        else:
            print(f"   ❌ Erreur: {result}")


def prompt_int(message: str, field_name: str = "Valeur", default: int = 0, 
               min_val: int = 0, max_val: int = 10000) -> int:
    """Demande une valeur entière"""
    while True:
        user_input = input(f"{message} [{default}]: ").strip()
        if not user_input:
            return default
        
        valid, result = validate_int(user_input, field_name, min_val, max_val)
        if valid:
            return result
        else:
            print(f"   ❌ Erreur: {result}")


def prompt_percentage(message: str, field_name: str = "Pourcentage", default: float = 0.0) -> float:
    """Demande un pourcentage"""
    while True:
        user_input = input(f"{message} [{default:.3f}]: ").strip()
        if not user_input:
            return default
        
        valid, result = validate_percentage(user_input, field_name)
        if valid:
            return result
        else:
            print(f"   ❌ Erreur: {result}")


# =============================================================================
# SCRIPT PRINCIPAL
# =============================================================================

def collect_player_data() -> dict:
    """Collecte interactivement les données du joueur"""
    
    print("\n" + "=" * 60)
    print("🏀 AJOUT D'UN NOUVEAU JOUEUR NBA")
    print("=" * 60)
    
    # Informations de base
    print("\n📋 INFORMATIONS GÉNÉRALES")
    print("-" * 40)
    
    existing = get_existing_players()
    
    # Nom (avec vérification doublon)
    while True:
        name = prompt("Nom complet du joueur", validate_name)
        if name in existing:
            print(f"   ⚠️  '{name}' existe déjà dans la base. Voulez-vous continuer? (o/n)")
            if input().lower() != 'o':
                continue
        break
    
    age = prompt("Âge", validate_age)
    team = prompt(f"Équipe (ex: LAL, BOS, MIA)", validate_team)
    position = prompt("Position (PG/SG/SF/PF/C)", validate_position)
    
    # Stats générales
    print("\n📊 STATISTIQUES GÉNÉRALES")
    print("-" * 40)
    
    g = prompt_int("Matchs joués (G)", "G", 0, 0, 82)
    gs = prompt_int("Matchs débutés (GS)", "GS", 0, 0, g)
    mp = prompt_int("Minutes jouées (MP)", "MP", 0, 0, 4000)
    
    # Tirs
    print("\n🎯 TIRS AU PANIER")
    print("-" * 40)
    
    fg = prompt_int("Field Goals réussis (FG)", "FG", 0, 0, 2000)
    fga = prompt_int("Field Goals tentés (FGA)", "FGA", fg, fg, 3000)
    fg_pct = round(fg / fga, 3) if fga > 0 else 0.0
    print(f"   → FG% calculé: {fg_pct:.3f}")
    
    # 3-points
    p3 = prompt_int("3-points réussis (3P)", "3P", 0, 0, 500)
    p3a = prompt_int("3-points tentés (3PA)", "3PA", p3, p3, 1000)
    p3_pct = round(p3 / p3a, 3) if p3a > 0 else 0.0
    print(f"   → 3P% calculé: {p3_pct:.3f}")
    
    # 2-points (calculé)
    p2 = fg - p3
    p2a = fga - p3a
    p2_pct = round(p2 / p2a, 3) if p2a > 0 else 0.0
    print(f"   → 2P calculé: {p2}/{p2a} ({p2_pct:.3f})")
    
    # eFG%
    efg_pct = round((fg + 0.5 * p3) / fga, 3) if fga > 0 else 0.0
    print(f"   → eFG% calculé: {efg_pct:.3f}")
    
    # Lancers francs
    print("\n🏀 LANCERS FRANCS")
    print("-" * 40)
    
    ft = prompt_int("Lancers francs réussis (FT)", "FT", 0, 0, 1000)
    fta = prompt_int("Lancers francs tentés (FTA)", "FTA", ft, ft, 1500)
    ft_pct = round(ft / fta, 3) if fta > 0 else 0.0
    print(f"   → FT% calculé: {ft_pct:.3f}")
    
    # Rebonds
    print("\n📈 REBONDS")
    print("-" * 40)
    
    orb = prompt_int("Rebonds offensifs (ORB)", "ORB", 0, 0, 500)
    drb = prompt_int("Rebonds défensifs (DRB)", "DRB", 0, 0, 1000)
    trb = orb + drb
    print(f"   → TRB calculé: {trb}")
    
    # Autres stats
    print("\n🔄 AUTRES STATISTIQUES")
    print("-" * 40)
    
    ast = prompt_int("Passes décisives (AST)", "AST", 0, 0, 1500)
    stl = prompt_int("Interceptions (STL)", "STL", 0, 0, 300)
    blk = prompt_int("Contres (BLK)", "BLK", 0, 0, 300)
    tov = prompt_int("Pertes de balle (TOV)", "TOV", 0, 0, 500)
    pf = prompt_int("Fautes personnelles (PF)", "PF", 0, 0, 400)
    
    # Points
    pts = fg * 2 + p3 + ft
    print(f"\n   → Points totaux calculés: {pts}")
    
    # Distinctions (optionnel)
    print("\n🏆 DISTINCTIONS (optionnel)")
    print("-" * 40)
    print("   Format: MVP-1,DPOY-3,AS,NBA1,DEF2 (laisser vide si aucune)")
    awards = input("   Distinctions: ").strip()
    
    # Jersey (optionnel)
    jersey = prompt_int("Numéro de maillot", "Jersey", 0, 0, 99)
    
    # ID NBA (optionnel)
    print("\n🆔 ID NBA (optionnel)")
    print("-" * 40)
    print("   Source: https://cdn.nba.com/headshots/nba/latest/1040x760/{ID}.png")
    print("   Laisser 0 si inconnu (peut être ajouté plus tard)")
    nba_id = prompt_int("ID NBA du joueur", "NBA_ID", 0, 0, 9999999)
    
    return {
        "rank": get_next_rank(),
        "name": name,
        "age": age,
        "team": team,
        "position": position,
        "g": g,
        "gs": gs,
        "mp": mp,
        "fg": fg,
        "fga": fga,
        "fg_pct": fg_pct,
        "p3": p3,
        "p3a": p3a,
        "p3_pct": p3_pct,
        "p2": p2,
        "p2a": p2a,
        "p2_pct": p2_pct,
        "efg_pct": efg_pct,
        "ft": ft,
        "fta": fta,
        "ft_pct": ft_pct,
        "orb": orb,
        "drb": drb,
        "trb": trb,
        "ast": ast,
        "stl": stl,
        "blk": blk,
        "tov": tov,
        "pf": pf,
        "pts": pts,
        "jersey": jersey,
        "awards": awards,
        "nba_id": nba_id,
    }


def format_player_line(data: dict) -> str:
    """Formate les données du joueur pour players_stats.txt"""
    # Format: Rk, Player, Age, Tm, Pos, G, GS, MP, FG, FGA, FG%, 3P, 3PA, 3P%, 
    #         2P, 2PA, 2P%, eFG%, FT, FTA, FT%, ORB, DRB, TRB, AST, STL, BLK, TOV, PF, PTS, Jersey, Awards
    
    parts = [
        str(data["rank"]),
        data["name"],
        str(data["age"]),
        data["team"],
        data["position"],
        str(data["g"]),
        str(data["gs"]),
        str(data["mp"]),
        str(data["fg"]),
        str(data["fga"]),
        f"{data['fg_pct']:.3f}",
        str(data["p3"]),
        str(data["p3a"]),
        f"{data['p3_pct']:.3f}",
        str(data["p2"]),
        str(data["p2a"]),
        f"{data['p2_pct']:.3f}",
        f"{data['efg_pct']:.3f}",
        str(data["ft"]),
        str(data["fta"]),
        f"{data['ft_pct']:.3f}",
        str(data["orb"]),
        str(data["drb"]),
        str(data["trb"]),
        str(data["ast"]),
        str(data["stl"]),
        str(data["blk"]),
        str(data["tov"]),
        str(data["pf"]),
        str(data["pts"]),
        str(data["jersey"]),
        data["awards"],
    ]
    
    return '\t'.join(parts)


def load_player_ids() -> Dict[str, int]:
    """Charge les IDs NBA depuis le fichier JSON"""
    if PLAYER_IDS_FILE.exists():
        try:
            with open(PLAYER_IDS_FILE, 'r', encoding='utf-8') as f:
                return json.load(f)
        except json.JSONDecodeError:
            return {}
    return {}


def save_player_ids(player_ids: Dict[str, int]) -> None:
    """Sauvegarde les IDs NBA dans le fichier JSON (trié alphabétiquement)"""
    sorted_ids = dict(sorted(player_ids.items(), key=lambda x: x[0]))
    with open(PLAYER_IDS_FILE, 'w', encoding='utf-8') as f:
        json.dump(sorted_ids, f, indent=2, ensure_ascii=False)


def save_player(data: dict) -> bool:
    """Sauvegarde le joueur dans players_stats.txt et met à jour player_nba_ids.json"""
    line = format_player_line(data)
    
    try:
        # Vérifier si le fichier se termine par un retour à la ligne
        needs_newline = False
        if STATS_FILE.exists():
            with open(STATS_FILE, 'rb') as f:
                f.seek(-1, 2)  # Aller à la fin - 1 octet
                last_char = f.read(1)
                needs_newline = last_char != b'\n'
        
        # Sauvegarder dans players_stats.txt
        with open(STATS_FILE, 'a', encoding='utf-8') as f:
            if needs_newline:
                f.write('\n')
            f.write(line + '\n')
        
        # Mettre à jour player_nba_ids.json
        player_ids = load_player_ids()
        player_ids[data['name']] = data['nba_id']
        save_player_ids(player_ids)
        
        return True
    except IOError as e:
        print(f"❌ Erreur d'écriture: {e}")
        return False


def display_summary(data: dict):
    """Affiche un résumé du joueur"""
    print("\n" + "=" * 60)
    print("📋 RÉSUMÉ DU JOUEUR")
    print("=" * 60)
    
    print(f"\n   🏀 {data['name']} ({data['team']})")
    print(f"   📍 Position: {data['position']} | Âge: {data['age']}")
    print(f"   🔢 Maillot: #{data['jersey']}")
    
    print(f"\n   📊 Stats saison:")
    print(f"      Matchs: {data['g']} G / {data['gs']} GS")
    print(f"      Points: {data['pts']} PTS ({data['pts']/data['g']:.1f} PPG)" if data['g'] > 0 else "")
    print(f"      Tirs: {data['fg']}/{data['fga']} ({data['fg_pct']:.1%})")
    print(f"      3-pts: {data['p3']}/{data['p3a']} ({data['p3_pct']:.1%})")
    print(f"      LF: {data['ft']}/{data['fta']} ({data['ft_pct']:.1%})")
    print(f"      Rebonds: {data['trb']} ({data['orb']} OFF + {data['drb']} DEF)")
    print(f"      Passes: {data['ast']} AST")
    print(f"      Défense: {data['stl']} STL / {data['blk']} BLK")
    
    if data['awards']:
        print(f"\n   🏆 Distinctions: {data['awards']}")
    
    if data['nba_id'] > 0:
        print(f"\n   🆔 ID NBA: {data['nba_id']}")
        print(f"      Photo: https://cdn.nba.com/headshots/nba/latest/1040x760/{data['nba_id']}.png")
    else:
        print(f"\n   🆔 ID NBA: Non renseigné (photo par défaut)")
    
    print("")


def main():
    """Point d'entrée principal"""
    
    print("\n" + "🏀" * 30)
    print("   AJOUT DE JOUEUR NBA - Script Interactif")
    print("🏀" * 30)
    
    # Vérifier que le fichier existe
    if not STATS_FILE.exists():
        print(f"\n❌ Fichier {STATS_FILE} introuvable!")
        print("   Assurez-vous d'être dans le bon répertoire.")
        sys.exit(1)
    
    try:
        # Collecter les données
        player_data = collect_player_data()
        
        # Afficher le résumé
        display_summary(player_data)
        
        # Confirmer
        print("💾 Voulez-vous sauvegarder ce joueur? (o/n)")
        confirm = input("   > ").strip().lower()
        
        if confirm == 'o':
            if save_player(player_data):
                print(f"\n✅ {player_data['name']} ajouté avec succès!")
                print(f"   📄 Stats: {STATS_FILE}")
                print(f"   📄 IDs: {PLAYER_IDS_FILE}")
                print(f"\n💡 Exécutez maintenant: python3 generate_players.py")
                print("   pour synchroniser avec nbaData.js")
            else:
                print("\n❌ Échec de l'ajout du joueur")
                sys.exit(1)
        else:
            print("\n❌ Ajout annulé")
            sys.exit(0)
            
    except KeyboardInterrupt:
        print("\n\n❌ Ajout annulé par l'utilisateur")
        sys.exit(0)


if __name__ == "__main__":
    main()
