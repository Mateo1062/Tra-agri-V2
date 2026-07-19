# Manga Arena 5v5

Un mini-MOBA mobile 5 contre 5 (style League of Legends) avec des combattants
inspirés de l'univers manga — le tout dans **un seul fichier HTML**, sans
dépendance, parfait pour un développeur solo.

## Comment jouer

Ouvre simplement `jeu/index.html` dans un navigateur (mobile ou PC).

- **Mobile** : joystick tactile à gauche de l'écran, boutons ATK (attaque) et
  SPÉ (capacité spéciale) à droite.
- **PC** : ZQSD / flèches pour bouger, `J` ou `Espace` pour attaquer, `K` pour
  la capacité spéciale.

**But** : comme dans LoL — détruis les 2 tours ennemies pour rendre leur
cristal (nexus) vulnérable, puis détruis le cristal. Tu contrôles 1 personnage,
tes 4 coéquipiers et les 5 ennemis sont gérés par l'IA. Les tours tirent sur
les ennemis proches, et les morts réapparaissent à la base (délai qui augmente
avec la durée de la partie).

## ⚠️ Question juridique : les noms de personnages

**Non, tu n'as pas le droit d'utiliser les noms originaux** (Naruto, Goku,
Luffy, Ichigo, Zoro, Tanjiro, Deku, Vegeta, Saitama…). Ce sont des œuvres
protégées par le droit d'auteur et souvent des marques déposées appartenant à
Shueisha, Toei Animation, Bandai Namco, etc. C'est justement pour cela que
Jump Force a dû acheter des licences officielles.

**Important à savoir** : changer une seule lettre ne constitue PAS une
protection juridique solide. Si le personnage reste clairement reconnaissable
(nom très proche + apparence copiée), cela peut toujours être considéré comme
de la contrefaçon. En pratique :

- **Projet perso / gratuit, non publié** : risque quasi nul, amuse-toi.
- **Publication sur Google Play / App Store** : les jeux qui copient des
  personnages sous licence se font régulièrement retirer (voire recevoir des
  mises en demeure). Dans ce cas, il faut des personnages **vraiment
  originaux** : noms différents, designs différents, juste "l'esprit" manga.

Le jeu utilise donc des noms modifiés et des designs simplifiés originaux :

| Personnage du jeu | Archétype inspiré de |
|---|---|
| Narudo | le ninja blond véloce |
| Gokan | le guerrier légendaire |
| Luffo | le pirate élastique |
| Ichigi | le faucheur d'âmes |
| Sasuko | le rival ténébreux |
| Zorao | le maître des lames |
| Deko | l'héritier du pouvoir |
| Tanjigo | le pourfendeur |
| Vegetor | le prince fier |
| Saitamo | le poing ultime |

Si tu vises une publication commerciale un jour, renomme-les encore plus
librement (ex. "Kazan", "Ryuto", "Mira"…) et éloigne les designs.

## Idées pour la suite (à ton rythme)

- Ajouter des sons (l'API Web Audio suffit, pas besoin de fichiers).
- Un 2e type de carte ou une jungle avec des monstres neutres.
- Des niveaux / de l'or gagné pendant la partie pour monter en puissance.
- En faire une vraie appli mobile : le fichier marche déjà en PWA
  ("Ajouter à l'écran d'accueil"), ou emballe-le avec
  [Capacitor](https://capacitorjs.com/) pour les stores.
- Du multijoueur réel plus tard (WebSocket) — mais garde l'IA d'abord,
  c'est beaucoup plus simple à maintenir seul.
