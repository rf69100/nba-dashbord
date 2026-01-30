/**
 * Données des quiz NBA
 * Organisées par catégorie avec niveau de difficulté
 * 
 * Structure:
 * - id: identifiant unique
 * - question: la question
 * - options: tableau de 4 réponses possibles
 * - correctAnswer: index de la bonne réponse (0-3)
 * - difficulty: 'easy' | 'medium' | 'hard'
 * - explanation: explication de la réponse (optionnel)
 */

export const quizCategories = [
  {
    id: 'season-2024-25',
    name: 'Saison 2024-25',
    description: 'Testez vos connaissances sur la saison actuelle',
    tag: 'Actuel',
    color: 'from-blue-500 to-blue-700',
    questionCount: 15,
  },
  {
    id: 'all-time',
    name: 'NBA All-Time',
    description: 'Les légendes et records de tous les temps',
    tag: 'Legends',
    color: 'from-amber-500 to-orange-600',
    questionCount: 15,
  },
  {
    id: 'nba-90s',
    name: 'NBA Années 90',
    description: "L'ère Jordan, les Bulls et les rivalités légendaires",
    tag: '90s',
    color: 'from-red-500 to-red-700',
    questionCount: 15,
  },
  {
    id: 'nba-2000s',
    name: 'NBA Années 2000',
    description: 'Kobe, Shaq, Duncan et les dynasties',
    tag: '2000s',
    color: 'from-violet-500 to-purple-700',
    questionCount: 15,
  },
  {
    id: 'records-stats',
    name: 'Records & Stats',
    description: 'Pour les fans de statistiques',
    tag: 'Stats',
    color: 'from-emerald-500 to-green-700',
    questionCount: 15,
  },
  {
    id: 'draft-history',
    name: 'Draft & Rookies',
    description: 'Les choix de draft et les débutants marquants',
    tag: 'Draft',
    color: 'from-slate-600 to-slate-800',
    questionCount: 15,
  },
];

export const quizQuestions = {
  'season-2024-25': [
    {
      id: 1,
      question: "Quelle équipe a le meilleur bilan de la saison régulière 2024-25 ?",
      options: ["Boston Celtics", "Oklahoma City Thunder", "Cleveland Cavaliers", "Denver Nuggets"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "OKC domine la saison avec le meilleur bilan de la ligue."
    },
    {
      id: 2,
      question: "Qui est le meilleur scoreur de la saison 2024-25 ?",
      options: ["Luka Dončić", "Shai Gilgeous-Alexander", "Giannis Antetokounmpo", "Joel Embiid"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "SGA mène la ligue au scoring avec plus de 32 points par match."
    },
    {
      id: 3,
      question: "Quel rookie français a été drafté #1 en 2023 et joue aux Spurs ?",
      options: ["Bilal Coulibaly", "Victor Wembanyama", "Ousmane Dieng", "Killian Hayes"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Victor Wembanyama, surnommé 'Wemby', est le phénomène français des Spurs."
    },
    {
      id: 4,
      question: "Quelle équipe Luka Dončić a-t-il rejoint en cours de saison 2024-25 ?",
      options: ["Golden State Warriors", "Los Angeles Lakers", "Miami Heat", "Phoenix Suns"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Luka a été tradé aux Lakers, rejoignant LeBron James."
    },
    {
      id: 5,
      question: "Qui mène la ligue aux passes décisives en 2024-25 ?",
      options: ["Trae Young", "Tyrese Haliburton", "Luka Dončić", "James Harden"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Tyrese Haliburton des Pacers est le meilleur passeur de la ligue."
    },
    {
      id: 6,
      question: "Combien de matchs les Cavaliers ont-ils gagnés consécutivement en début de saison ?",
      options: ["10", "12", "15", "18"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Cleveland a réalisé un départ historique de 15 victoires consécutives."
    },
    {
      id: 7,
      question: "Quel joueur des Thunder accompagne SGA dans le backcourt ?",
      options: ["Cason Wallace", "Jalen Williams", "Lu Dort", "Josh Giddey"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Jalen Williams forme un duo redoutable avec SGA."
    },
    {
      id: 8,
      question: "Qui est le meilleur rebondeur de la saison 2024-25 ?",
      options: ["Nikola Jokić", "Domantas Sabonis", "Rudy Gobert", "Anthony Davis"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Domantas Sabonis des Kings domine aux rebonds."
    },
    {
      id: 9,
      question: "Quelle équipe a recruté Paul George en free agency ?",
      options: ["Orlando Magic", "Philadelphia 76ers", "San Antonio Spurs", "Miami Heat"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "PG13 a rejoint les Sixers aux côtés d'Embiid et Maxey."
    },
    {
      id: 10,
      question: "Quel jeune pivot des Thunder mesure 2m13 et a été drafté #2 en 2022 ?",
      options: ["Mark Williams", "Walker Kessler", "Chet Holmgren", "Jalen Duren"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Chet Holmgren, après une année blanche pour blessure, excelle avec OKC."
    },
    {
      id: 11,
      question: "Qui est le coach des Cleveland Cavaliers ?",
      options: ["Ime Udoka", "Kenny Atkinson", "Mike Brown", "J.B. Bickerstaff"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "Kenny Atkinson a pris les rênes des Cavs en 2024."
    },
    {
      id: 12,
      question: "Quel joueur des Celtics a remporté le MVP des Finals 2024 ?",
      options: ["Jayson Tatum", "Jaylen Brown", "Jrue Holiday", "Derrick White"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Jaylen Brown a été élu MVP des Finals 2024."
    },
    {
      id: 13,
      question: "Combien de triple-doubles Nikola Jokić a-t-il réalisés cette saison (approximativement) ?",
      options: ["5-10", "10-15", "15-20", "20+"],
      correctAnswer: 3,
      difficulty: 'hard',
      explanation: "Jokić continue d'accumuler les triple-doubles à un rythme record."
    },
    {
      id: 14,
      question: "Quelle équipe Anthony Edwards mène-t-il ?",
      options: ["Charlotte Hornets", "Minnesota Timberwolves", "Memphis Grizzlies", "New Orleans Pelicans"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Ant-Man est la star des Timberwolves du Minnesota."
    },
    {
      id: 15,
      question: "Quel joueur français joue aux Washington Wizards ?",
      options: ["Evan Fournier", "Bilal Coulibaly", "Nicolas Batum", "Guerschon Yabusele"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Bilal Coulibaly, drafté #7 en 2023, évolue aux Wizards."
    },
  ],

  'all-time': [
    {
      id: 1,
      question: "Qui est le meilleur scoreur de tous les temps en NBA ?",
      options: ["Michael Jordan", "Kobe Bryant", "Kareem Abdul-Jabbar", "LeBron James"],
      correctAnswer: 3,
      difficulty: 'easy',
      explanation: "LeBron James a dépassé Kareem Abdul-Jabbar en 2023."
    },
    {
      id: 2,
      question: "Combien de titres NBA Michael Jordan a-t-il remportés ?",
      options: ["4", "5", "6", "7"],
      correctAnswer: 2,
      difficulty: 'easy',
      explanation: "MJ a gagné 6 titres, tous avec les Bulls (1991-93, 1996-98)."
    },
    {
      id: 3,
      question: "Quelle équipe détient le record de victoires en saison régulière (73) ?",
      options: ["Chicago Bulls 1996", "Golden State Warriors 2016", "Los Angeles Lakers 1972", "Boston Celtics 1986"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Les Warriors de Curry ont établi ce record en 2015-16 (73-9)."
    },
    {
      id: 4,
      question: "Qui détient le record de passes décisives en carrière ?",
      options: ["Magic Johnson", "John Stockton", "Steve Nash", "Chris Paul"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "John Stockton détient ce record avec 15 806 passes."
    },
    {
      id: 5,
      question: "Quel joueur a remporté le plus de titres de MVP ?",
      options: ["Michael Jordan (5)", "LeBron James (4)", "Kareem Abdul-Jabbar (6)", "Bill Russell (5)"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Kareem Abdul-Jabbar a remporté 6 MVP (1971, 72, 74, 76, 77, 80)."
    },
    {
      id: 6,
      question: "Qui a marqué 100 points dans un seul match ?",
      options: ["Michael Jordan", "Kobe Bryant", "Wilt Chamberlain", "Kareem Abdul-Jabbar"],
      correctAnswer: 2,
      difficulty: 'easy',
      explanation: "Wilt Chamberlain a marqué 100 points le 2 mars 1962."
    },
    {
      id: 7,
      question: "Quelle franchise a remporté le plus de titres NBA ?",
      options: ["Los Angeles Lakers", "Boston Celtics", "Chicago Bulls", "Golden State Warriors"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Les Celtics ont 18 titres, les Lakers 17."
    },
    {
      id: 8,
      question: "Qui est surnommé 'The Dream' ?",
      options: ["Shaquille O'Neal", "Hakeem Olajuwon", "Patrick Ewing", "David Robinson"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Hakeem 'The Dream' Olajuwon, légende des Rockets."
    },
    {
      id: 9,
      question: "En quelle année la NBA a-t-elle été fondée ?",
      options: ["1936", "1946", "1956", "1966"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "La NBA (alors BAA) a été fondée en 1946."
    },
    {
      id: 10,
      question: "Qui détient le record de rebonds en carrière ?",
      options: ["Wilt Chamberlain", "Bill Russell", "Kareem Abdul-Jabbar", "Tim Duncan"],
      correctAnswer: 0,
      difficulty: 'hard',
      explanation: "Wilt Chamberlain avec 23 924 rebonds en carrière."
    },
    {
      id: 11,
      question: "Quel joueur a le plus de sélections All-Star ?",
      options: ["Kobe Bryant (18)", "LeBron James (20)", "Kareem Abdul-Jabbar (19)", "Tim Duncan (15)"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "LeBron James détient le record avec 20 sélections."
    },
    {
      id: 12,
      question: "Qui a remporté le plus de titres de champion ?",
      options: ["Michael Jordan (6)", "Bill Russell (11)", "Kareem Abdul-Jabbar (6)", "Robert Horry (7)"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Bill Russell a gagné 11 titres avec les Celtics."
    },
    {
      id: 13,
      question: "Quel trio légendaire jouait aux Celtics dans les années 80 ?",
      options: ["Jordan, Pippen, Rodman", "Bird, McHale, Parish", "Magic, Kareem, Worthy", "Isiah, Dumars, Laimbeer"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Larry Bird, Kevin McHale et Robert Parish formaient le Big Three de Boston."
    },
    {
      id: 14,
      question: "Qui est le seul joueur à avoir une moyenne de triple-double sur une saison entière ?",
      options: ["Magic Johnson", "LeBron James", "Oscar Robertson", "Russell Westbrook"],
      correctAnswer: 3,
      difficulty: 'hard',
      explanation: "Westbrook l'a fait 3 fois (2017, 2018, 2019), Oscar Robertson une fois (1962)."
    },
    {
      id: 15,
      question: "Quel joueur européen a été le premier à être élu MVP ?",
      options: ["Dirk Nowitzki", "Pau Gasol", "Tony Parker", "Steve Nash"],
      correctAnswer: 0,
      difficulty: 'hard',
      explanation: "Dirk Nowitzki (Allemagne) en 2007, bien que Nash (Canada) ait gagné en 2005-06."
    },
  ],

  'nba-90s': [
    {
      id: 1,
      question: "Combien de fois Michael Jordan a-t-il remporté le titre de MVP des Finals dans les années 90 ?",
      options: ["4", "5", "6", "3"],
      correctAnswer: 2,
      difficulty: 'easy',
      explanation: "MJ a été MVP des Finals à chacun de ses 6 titres."
    },
    {
      id: 2,
      question: "Quelle équipe les Bulls ont-ils battu en Finals 1996 ?",
      options: ["Utah Jazz", "Seattle SuperSonics", "Phoenix Suns", "New York Knicks"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Les Bulls ont battu les Sonics 4-2 en 1996."
    },
    {
      id: 3,
      question: "Qui était le meneur des 'Bad Boy' Pistons ?",
      options: ["Joe Dumars", "Isiah Thomas", "Dennis Rodman", "Bill Laimbeer"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Isiah Thomas était le leader et meneur des Bad Boys de Detroit."
    },
    {
      id: 4,
      question: "En quelle année Michael Jordan a-t-il pris sa première retraite ?",
      options: ["1991", "1993", "1995", "1998"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Jordan a annoncé sa retraite en octobre 1993 pour jouer au baseball."
    },
    {
      id: 5,
      question: "Qui formait le duo 'Stockton to Malone' ?",
      options: ["Houston Rockets", "Utah Jazz", "Phoenix Suns", "Seattle SuperSonics"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "John Stockton et Karl Malone ont joué ensemble au Jazz de 1985 à 2003."
    },
    {
      id: 6,
      question: "Quel surnom portait l'équipe des Knicks des années 90 ?",
      options: ["Showtime", "Bad Boys", "Twin Towers", "Bruise Brothers"],
      correctAnswer: 3,
      difficulty: 'hard',
      explanation: "Les Knicks de Pat Riley étaient connus pour leur jeu physique."
    },
    {
      id: 7,
      question: "Qui a remporté le concours de dunks en 1991 avec son dunk 'depuis la ligne des LF' ?",
      options: ["Michael Jordan", "Dominique Wilkins", "Dee Brown", "Kenny Smith"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Dee Brown des Celtics avec son dunk les yeux bandés."
    },
    {
      id: 8,
      question: "Quelle équipe a battu les Bulls en playoffs avant leur premier titre ?",
      options: ["Detroit Pistons", "Boston Celtics", "Cleveland Cavaliers", "New York Knicks"],
      correctAnswer: 0,
      difficulty: 'medium',
      explanation: "Les Pistons ont éliminé les Bulls en 1988, 1989 et 1990."
    },
    {
      id: 9,
      question: "Qui était surnommé 'The Worm' ?",
      options: ["Scottie Pippen", "Dennis Rodman", "Charles Barkley", "Shawn Kemp"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Dennis Rodman était surnommé 'The Worm' pour son style de rebond."
    },
    {
      id: 10,
      question: "Quelle équipe Hakeem Olajuwon a-t-il menée à deux titres consécutifs ?",
      options: ["San Antonio Spurs", "Houston Rockets", "Orlando Magic", "Miami Heat"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Les Rockets ont gagné en 1994 et 1995 pendant la retraite de Jordan."
    },
    {
      id: 11,
      question: "Qui était le coach des Bulls pendant leurs 6 titres ?",
      options: ["Pat Riley", "Phil Jackson", "Larry Brown", "Don Nelson"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Phil Jackson et son 'triangle offense' ont mené les Bulls à la gloire."
    },
    {
      id: 12,
      question: "Quel joueur des Suns a affronté les Bulls en Finals 1993 ?",
      options: ["Kevin Johnson", "Charles Barkley", "Dan Majerle", "Les trois"],
      correctAnswer: 3,
      difficulty: 'medium',
      explanation: "Barkley (MVP 1993), KJ et Dan Majerle étaient les leaders des Suns."
    },
    {
      id: 13,
      question: "Combien de victoires les Bulls de 1996 ont-ils obtenues en saison régulière ?",
      options: ["69", "70", "72", "74"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "72 victoires et 10 défaites, record battu en 2016 par Golden State."
    },
    {
      id: 14,
      question: "Qui a marqué 'The Shot' contre Cleveland en 1989 ?",
      options: ["Scottie Pippen", "Michael Jordan", "John Paxson", "Horace Grant"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Le tir au buzzer de Jordan contre Craig Ehlo est légendaire."
    },
    {
      id: 15,
      question: "Quelle Dream Team a dominé les JO de 1992 ?",
      options: ["USA avec Jordan, Magic, Bird", "USA avec Shaq, Penny, Grant Hill", "USA avec Duncan, Garnett, Kobe", "USA avec LeBron, Wade, Bosh"],
      correctAnswer: 0,
      difficulty: 'easy',
      explanation: "La Dream Team originale de Barcelone 1992 avec Jordan, Magic et Bird."
    },
  ],

  'nba-2000s': [
    {
      id: 1,
      question: "Combien de titres Kobe Bryant et Shaquille O'Neal ont-ils gagnés ensemble ?",
      options: ["2", "3", "4", "5"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Le duo Shaq-Kobe a remporté 3 titres consécutifs (2000-2002)."
    },
    {
      id: 2,
      question: "Quelle équipe a réalisé un comeback de 0-3 à 4-3 en playoffs 2004 ?",
      options: ["Aucune équipe n'a fait ça", "Boston Celtics", "Detroit Pistons", "Houston Rockets"],
      correctAnswer: 0,
      difficulty: 'hard',
      explanation: "Aucune équipe n'a jamais remonté un déficit de 0-3 en NBA."
    },
    {
      id: 3,
      question: "Qui a marqué 81 points dans un match en 2006 ?",
      options: ["LeBron James", "Kobe Bryant", "Allen Iverson", "Tracy McGrady"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Kobe a marqué 81 points contre Toronto, 2e meilleur total de l'histoire."
    },
    {
      id: 4,
      question: "Quelle équipe Tim Duncan a-t-il menée à 4 titres ?",
      options: ["Dallas Mavericks", "San Antonio Spurs", "Phoenix Suns", "Houston Rockets"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Tim Duncan a gagné 5 titres avec les Spurs (1999, 2003, 2005, 2007, 2014)."
    },
    {
      id: 5,
      question: "En quelle année LeBron James a-t-il été drafté ?",
      options: ["2001", "2002", "2003", "2004"],
      correctAnswer: 2,
      difficulty: 'easy',
      explanation: "LeBron a été le 1er choix de la draft 2003 par Cleveland."
    },
    {
      id: 6,
      question: "Quelle équipe les Pistons de Detroit ont-ils battu en Finals 2004 ?",
      options: ["San Antonio Spurs", "Los Angeles Lakers", "New Jersey Nets", "Indiana Pacers"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Les Pistons ont battu les Lakers 4-1 en 2004."
    },
    {
      id: 7,
      question: "Qui était surnommé 'The Answer' ?",
      options: ["Steve Nash", "Allen Iverson", "Jason Kidd", "Gary Payton"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Allen Iverson, MVP 2001, était 'The Answer' des 76ers."
    },
    {
      id: 8,
      question: "Combien de MVP consécutifs Steve Nash a-t-il remportés ?",
      options: ["1", "2", "3", "0"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Nash a été MVP en 2005 et 2006 avec Phoenix."
    },
    {
      id: 9,
      question: "Quelle équipe a drafté Dwyane Wade, Carmelo Anthony et LeBron James en 2003 ?",
      options: ["Toutes des équipes différentes", "Miami, Denver, Cleveland", "La même équipe", "Toronto, Orlando, Detroit"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Wade à Miami (#5), Melo à Denver (#3), LeBron à Cleveland (#1)."
    },
    {
      id: 10,
      question: "Qui formait le 'Big Three' des Celtics en 2008 ?",
      options: ["Pierce, Allen, Garnett", "Rondo, Allen, Pierce", "Pierce, Garnett, Rondo", "Allen, Garnett, Perkins"],
      correctAnswer: 0,
      difficulty: 'easy',
      explanation: "Paul Pierce, Ray Allen et Kevin Garnett ont gagné le titre en 2008."
    },
    {
      id: 11,
      question: "Quel joueur des Spurs a été MVP des Finals 2003 ?",
      options: ["Tony Parker", "Tim Duncan", "Manu Ginobili", "David Robinson"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Tim Duncan, avec son premier titre post-Robinson."
    },
    {
      id: 12,
      question: "En quelle année les Pistons 'Going to Work' ont-ils gagné le titre ?",
      options: ["2002", "2003", "2004", "2005"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Les Pistons de Ben Wallace, Chauncey Billups, Rip Hamilton ont gagné en 2004."
    },
    {
      id: 13,
      question: "Qui était le meilleur scoreur de la ligue en 2005-06 ?",
      options: ["Allen Iverson", "LeBron James", "Kobe Bryant", "Dwyane Wade"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Kobe Bryant avec 35.4 points par match."
    },
    {
      id: 14,
      question: "Quelle équipe 'Seven Seconds or Less' Steve Nash menait-il ?",
      options: ["Dallas Mavericks", "Phoenix Suns", "Los Angeles Lakers", "Portland Trail Blazers"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Les Suns de Mike D'Antoni avec leur jeu ultra-rapide."
    },
    {
      id: 15,
      question: "Combien de points T-Mac a-t-il marqués en 35 secondes contre les Spurs en 2004 ?",
      options: ["9", "11", "13", "15"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Tracy McGrady a marqué 13 points en 35 secondes, un moment légendaire."
    },
  ],

  'records-stats': [
    {
      id: 1,
      question: "Quel est le record de points en un match NBA ?",
      options: ["81 (Kobe)", "100 (Wilt)", "73 (David Thompson)", "71 (David Robinson)"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "100 points par Wilt Chamberlain le 2 mars 1962."
    },
    {
      id: 2,
      question: "Quel est le record de rebonds en un match ?",
      options: ["45", "50", "55", "34"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "55 rebonds par Wilt Chamberlain le 24 novembre 1960."
    },
    {
      id: 3,
      question: "Qui détient le record de 3-points marqués en un match ?",
      options: ["Stephen Curry (13)", "Klay Thompson (14)", "Damian Lillard (12)", "Donyell Marshall (12)"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Klay Thompson a marqué 14 tirs à 3-points le 29 octobre 2018."
    },
    {
      id: 4,
      question: "Quelle est la plus longue série de victoires en NBA ?",
      options: ["27 (Heat 2013)", "33 (Lakers 1972)", "30 (Warriors 2015)", "28 (Bucks 1971)"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "Les Lakers ont gagné 33 matchs consécutifs en 1971-72."
    },
    {
      id: 5,
      question: "Qui détient le record de contres en un match ?",
      options: ["Hakeem Olajuwon (12)", "Mark Eaton (14)", "Elmore Smith (17)", "Manute Bol (15)"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Elmore Smith avec 17 contres le 28 octobre 1973."
    },
    {
      id: 6,
      question: "Quel est le record d'interceptions en un match ?",
      options: ["9", "10", "11", "12"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "11 interceptions, partagé par plusieurs joueurs dont Kendall Gill."
    },
    {
      id: 7,
      question: "Quelle est la meilleure moyenne de rebonds sur une saison ?",
      options: ["25.7 (Wilt)", "27.2 (Wilt)", "22.9 (Russell)", "24.1 (Wilt)"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "Wilt Chamberlain avec 27.2 rebonds par match en 1960-61."
    },
    {
      id: 8,
      question: "Qui a la meilleure moyenne de points sur une saison ?",
      options: ["Michael Jordan (37.1)", "Wilt Chamberlain (50.4)", "Kobe Bryant (35.4)", "James Harden (36.1)"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Wilt a moyenné 50.4 points par match en 1961-62."
    },
    {
      id: 9,
      question: "Quel est le record de passes décisives en un match ?",
      options: ["27", "28", "30", "32"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Scott Skiles avec 30 passes le 30 décembre 1990."
    },
    {
      id: 10,
      question: "Qui a le plus de triple-doubles en carrière ?",
      options: ["Magic Johnson", "Oscar Robertson", "Russell Westbrook", "LeBron James"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Russell Westbrook avec plus de 190 triple-doubles."
    },
    {
      id: 11,
      question: "Quel est le record de points en un quart-temps ?",
      options: ["29 (Klay Thompson)", "33 (George Gervin)", "37 (Klay Thompson)", "35 (Carmelo Anthony)"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Klay Thompson a marqué 37 points au 3e quart-temps le 23 janvier 2015."
    },
    {
      id: 12,
      question: "Quelle est la pire défaite de l'histoire NBA (écart de points) ?",
      options: ["58 points", "63 points", "68 points", "73 points"],
      correctAnswer: 3,
      difficulty: 'hard',
      explanation: "Thunder 152-79 contre les Kings en 2024 (73 points d'écart)."
    },
    {
      id: 13,
      question: "Qui a le pourcentage de LF le plus élevé en carrière (min 1200 LF) ?",
      options: ["Steve Nash", "Mark Price", "Stephen Curry", "Reggie Miller"],
      correctAnswer: 0,
      difficulty: 'hard',
      explanation: "Steve Nash avec 90.4% aux lancers francs en carrière."
    },
    {
      id: 14,
      question: "Quel est le record de 3-points tentés en un match ?",
      options: ["22", "24", "26", "28"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "24 tentatives, partagé par plusieurs joueurs dont Curry et Lillard."
    },
    {
      id: 15,
      question: "Qui détient le record de minutes jouées en carrière ?",
      options: ["Kareem Abdul-Jabbar", "Karl Malone", "LeBron James", "Dirk Nowitzki"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "LeBron James avec plus de 57 000 minutes en carrière."
    },
  ],

  'draft-history': [
    {
      id: 1,
      question: "Qui a été le premier choix de la draft 2003 ?",
      options: ["Carmelo Anthony", "Dwyane Wade", "Chris Bosh", "LeBron James"],
      correctAnswer: 3,
      difficulty: 'easy',
      explanation: "LeBron James a été sélectionné par Cleveland."
    },
    {
      id: 2,
      question: "Quelle équipe a drafté Kobe Bryant en 1996 ?",
      options: ["Los Angeles Lakers", "Charlotte Hornets", "Philadelphia 76ers", "New Jersey Nets"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Charlotte l'a drafté puis tradé aux Lakers contre Vlade Divac."
    },
    {
      id: 3,
      question: "En quelle position Stephen Curry a-t-il été drafté ?",
      options: ["1er", "5e", "7e", "10e"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Curry a été le 7e choix de 2009 derrière Blake Griffin et James Harden."
    },
    {
      id: 4,
      question: "Qui était le premier choix de la draft 1984 avec Jordan ?",
      options: ["Michael Jordan", "Hakeem Olajuwon", "Charles Barkley", "John Stockton"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Hakeem Olajuwon était #1, Jordan #3."
    },
    {
      id: 5,
      question: "Quel joueur non drafté est devenu All-Star ?",
      options: ["Ben Wallace", "John Starks", "Tous les deux", "Wesley Matthews"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Ben Wallace (4x All-Star) et John Starks n'ont pas été draftés."
    },
    {
      id: 6,
      question: "Quelle draft est considérée comme la meilleure de l'histoire ?",
      options: ["1984", "1996", "2003", "2009"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "2003 avec LeBron, Wade, Melo, Bosh est souvent considérée la meilleure."
    },
    {
      id: 7,
      question: "Qui a été Rookie of the Year en 2019-20 ?",
      options: ["Zion Williamson", "Ja Morant", "RJ Barrett", "Tyler Herro"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Ja Morant des Grizzlies a remporté le titre de ROY."
    },
    {
      id: 8,
      question: "À quelle position Giannis Antetokounmpo a-t-il été drafté ?",
      options: ["5e", "10e", "15e", "20e"],
      correctAnswer: 2,
      difficulty: 'medium',
      explanation: "Giannis a été le 15e choix de 2013 par Milwaukee."
    },
    {
      id: 9,
      question: "Quel joueur a été drafté directement depuis le lycée en 2004 ?",
      options: ["LeBron James", "Dwight Howard", "Carmelo Anthony", "Josh Smith"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Dwight Howard a été drafté #1 directement du lycée."
    },
    {
      id: 10,
      question: "Qui était le premier Européen drafté #1 ?",
      options: ["Dirk Nowitzki", "Yao Ming", "Andrea Bargnani", "Pau Gasol"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Andrea Bargnani (Italie) a été #1 en 2006 par Toronto."
    },
    {
      id: 11,
      question: "En quelle année la loterie de draft a-t-elle été introduite ?",
      options: ["1980", "1985", "1990", "1995"],
      correctAnswer: 1,
      difficulty: 'hard',
      explanation: "La loterie a été introduite en 1985, won par les Knicks (Patrick Ewing)."
    },
    {
      id: 12,
      question: "Quel Français a été drafté le plus haut ?",
      options: ["Tony Parker", "Victor Wembanyama", "Evan Fournier", "Rudy Gobert"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Victor Wembanyama #1 en 2023, record pour un Français."
    },
    {
      id: 13,
      question: "Qui a gagné le ROY avec la pire équipe (9 victoires) en 2024 ?",
      options: ["Chet Holmgren", "Victor Wembanyama", "Brandon Miller", "Amen Thompson"],
      correctAnswer: 1,
      difficulty: 'medium',
      explanation: "Wembanyama a gagné le ROY avec les Spurs malgré leur mauvais bilan."
    },
    {
      id: 14,
      question: "Combien de fois Tim Duncan a-t-il été le premier choix ?",
      options: ["0", "1", "2", "3"],
      correctAnswer: 1,
      difficulty: 'easy',
      explanation: "Tim Duncan a été le #1 pick en 1997 par San Antonio."
    },
    {
      id: 15,
      question: "Quel joueur drafté #60 (dernier) est devenu All-Star ?",
      options: ["Isaiah Thomas", "Manu Ginobili", "Les deux", "Aucun"],
      correctAnswer: 2,
      difficulty: 'hard',
      explanation: "Isaiah Thomas (#60 en 2011) et Manu Ginobili (#57 en 1999) sont devenus All-Stars."
    },
  ],
};

/**
 * Récupère les questions d'une catégorie avec mélange optionnel
 * @param {string} categoryId - ID de la catégorie
 * @param {boolean} shuffle - Mélanger les questions
 * @param {number} limit - Nombre de questions (optionnel)
 * @returns {Array} Questions de la catégorie
 */
export function getQuestionsByCategory(categoryId, shuffle = true, limit = null) {
  const questions = quizQuestions[categoryId] || [];
  
  let result = [...questions];
  
  if (shuffle) {
    result = result.sort(() => Math.random() - 0.5);
  }
  
  if (limit && limit < result.length) {
    result = result.slice(0, limit);
  }
  
  return result;
}

/**
 * Récupère une catégorie par son ID
 * @param {string} categoryId - ID de la catégorie
 * @returns {Object|null} Catégorie trouvée
 */
export function getCategoryById(categoryId) {
  return quizCategories.find(cat => cat.id === categoryId) || null;
}
