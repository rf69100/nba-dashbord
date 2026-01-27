#!/usr/bin/env python3
import re

# Liste des joueurs avec leurs noms
players = [
    "LeBron James",
    "Stephen Curry",
    "Giannis Antetokounmpo",
    "Ryan Fonseca",
    "Kevin Durant",
    "Luka Doncic",
    "Nikola Jokic",
    "Joel Embiid",
    "Jayson Tatum",
    "Shai Gilgeous-Alexander",
    "Anthony Edwards",
    "Ja Morant",
    "Victor Wembanyama",
    "Chet Holmgren",
    "Bam Adebayo",
    "Donovan Mitchell",
    "Zion Williamson",
    "Devin Booker",
    "Kawhi Leonard",
    "Trae Young",
    "Chris Paul"
]

# Lire le fichier
with open('/workspaces/nba-dashbord/src/services/nbaData.js', 'r') as f:
    content = f.read()

# Pour chaque joueur, trouver son bloc et remplacer les URLs d'images
for player_name in players:
    # Créer l'URL avec le nom du joueur
    name_for_url = player_name.replace(' ', '+')
    new_url = f'https://ui-avatars.com/api/?name={name_for_url}&size=256&background=random&color=fff&bold=true'
    
    # Pattern pour trouver le bloc du joueur
    pattern = f'(display_name: "{player_name}".*?)(https://[^"]+)(".*?)(https://[^"]+)(")'
    
    def replacer(match):
        return match.group(1) + new_url + match.group(3) + new_url + match.group(5)
    
    content = re.sub(pattern, replacer, content, flags=re.DOTALL)

# Écrire le fichier modifié
with open('/workspaces/nba-dashbord/src/services/nbaData.js', 'w') as f:
    f.write(content)

print("✅ Toutes les images des joueurs ont été mises à jour!")