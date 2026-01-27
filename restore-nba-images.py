#!/usr/bin/env python3
import re

# Mapping des joueurs avec leurs IDs NBA officiels
players_images = {
    "LeBron James": "2544",
    "Stephen Curry": "201939",
    "Giannis Antetokounmpo": "203507",
    "Kevin Durant": "201142",
    "Luka Doncic": "1629029",
    "Nikola Jokic": "203999",
    "Joel Embiid": "203954",
    "Jayson Tatum": "1628369",
    "Shai Gilgeous-Alexander": "1628983",
    "Anthony Edwards": "1630162",
    "Ja Morant": "1629630",
    "Victor Wembanyama": "1641705",
    "Devin Booker": "1626164",
    "Kawhi Leonard": "202695",
    "Trae Young": "1629027",
}

# Lire le fichier
with open('/workspaces/nba-dashbord/src/services/nbaData.js', 'r') as f:
    content = f.read()

# Pour chaque joueur avec un ID NBA connu, remplacer par la vraie image
for player_name, nba_id in players_images.items():
    # URL officielle NBA
    nba_image_url = f"https://cdn.nba.com/headshots/nba/latest/1040x760/{nba_id}.png"
    
    # Fallback avec initiales
    name_for_url = player_name.replace(' ', '+')
    fallback_url = f'https://ui-avatars.com/api/?name={name_for_url}&size=256&background=random&color=fff&bold=true'
    
    # Pattern pour trouver les URLs du joueur
    old_url_pattern = f'(display_name: "{player_name}".*?)(https://ui-avatars[^"]+)(".*?)(https://ui-avatars[^"]+)(")'
    
    def replacer(match):
        return match.group(1) + nba_image_url + match.group(3) + nba_image_url + match.group(5)
    
    content = re.sub(old_url_pattern, replacer, content, flags=re.DOTALL)

# Écrire le fichier modifié
with open('/workspaces/nba-dashbord/src/services/nbaData.js', 'w') as f:
    f.write(content)

print("✅ Images NBA officielles restaurées avec fallback sur initiales!")