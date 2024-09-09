import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/composant/responsive.dart';

class ActivitySection extends StatelessWidget {
  final Color titleColor;

  const ActivitySection({super.key, required this.titleColor});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount;
    Responsive.isMobile(context) ? crossAxisCount = 1 : Responsive.isTablet(context) ? crossAxisCount = 2 : crossAxisCount = 3;

    // Liste des ActivityBox à afficher
    List<Widget> activityBoxes = [
      ActivityBox(
        icon: Icons.print_rounded,
        title: 'L\'impression 3D',
        description: 'En 2020, j\'ai décidé de m\'acheter ma première imprimante 3D. Depuis, je l\'utilise pour imprimer des pièces, que ce soit pour des objets décoratifs ou utiles. C\'est un outil génial pour donner vie à mes projets.',
        iconColor: titleColor,
      ),
      ActivityBox(
        icon: Icons.computer_outlined,
        title: 'Conception 3D',
        description: 'J\'ai commencé à concevoir des pièces 3D au lycée pendant mes cours, et j\'ai vraiment apprécié cette liberté créative. On peut créer ce que l\'on veut et voir ses idées se concrétiser, ce qui est très gratifiant.',
        iconColor: titleColor,
      ),
      ActivityBox(
        icon: Icons.videogame_asset_outlined,
        title: 'Jeux vidéo',
        description: 'Les jeux vidéo sont un excellent moyen de me vider l\'esprit et de jouer avec mes amis proches. Peu importe le jeu, c\'est toujours une bonne occasion de rigoler et de passer du bon temps ensemble.',
        iconColor: titleColor,
      ),
      ActivityBox(
        icon: Icons.sports_tennis_outlined,
        title: 'Le Tennis',
        description: 'Le tennis est un sport que je pratique depuis plus de 10 ans. C\'est ma manière de m\'amuser en fin de semaine, généralement le vendredi soir, pour me détendre et profiter de la fin de la semaine.',
        iconColor: titleColor,
      ),
      ActivityBox(
        icon: Icons.directions_bike_outlined,
        title: 'Le vélo',
        description: 'Le vélo me permet de me défouler et de faire du sport. Je pratique depuis que je suis petit, que ce soit pour des balades en forêt, en montagne ou sur route. J\'apprécie de rouler en toutes saisons',
        iconColor: titleColor,
      ),
      ActivityBox(
        icon: Icons.queue_music_outlined,
        title: 'La musique',
        description: 'La musique est mon moyen de me concentrer, de me déconnecter et de m\'amuser. J\'en écoute tout le temps, que ce soit pour travailler, me détendre ou juste profiter du moment.',
        iconColor: titleColor,
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Passion',
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w500,
              fontSize: 45,
              color: titleColor,
            ),
          ),
        ),
        // Utilisation de GridView pour adapter le nombre de colonnes
        GridView.builder(
          shrinkWrap: true, // Pour éviter les erreurs de dimension dans Column
          physics: const NeverScrollableScrollPhysics(), // Désactiver le scrolling de GridView
          itemCount: activityBoxes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Nombre de colonnes dynamiques
            mainAxisSpacing: 20,
            mainAxisExtent: 250,
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 3, // Ratio de l'aspect box (largeur/hauteur)
          ),
          itemBuilder: (context, index) {
            return activityBoxes[index];
          },
        ),
      ],
    );
  }
}

class ActivityBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color iconColor;

  const ActivityBox({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 45),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
