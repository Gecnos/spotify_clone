import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.light, //Mode light ou black
        scaffoldBackgroundColor: Colors.black, //Le background
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // Enlève l'ombre sous la barre
        toolbarHeight: 70, // On augmente un peu la hauteur pour respirer
        title: Row(
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFF1DB954),
              child: Text(
                "G",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 12),

            Expanded(
              child: SizedBox(
                height: 27,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HeaderButton(label: "Tout", isActive: true),
                    HeaderButton(label: "Musique"),
                    HeaderButton(label: "Podcasts"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        //Pour le scroll vertical
        children: [
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(
              16.0,
            ), //applique de l'espace de 16 pixels tout autour du padding
            child: GridView.count(
              crossAxisCount: 2, // Définit le nombre de colonne
              shrinkWrap:
                  true, // Permet à la grille de prendre sa place dans la ListView
              physics:
                  const NeverScrollableScrollPhysics(), // La grille ne scrolle pas seule
              crossAxisSpacing: 8, //Espace entre les colonnes
              mainAxisSpacing: 8, //Espace entre les lignes
              childAspectRatio: 5, // Donne la forme rectangulaire
              children: const [
                RecentCard(
                  title: "Qualf",
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/6cc51dfb71ae254d9051f77cd54c30f1/500x500-000000-80-0-0.jpg",
                ),
                RecentCard(
                  title: "Rihanna",
                  image:
                      "https://cdn-images.dzcdn.net/images/artist/b78cdc205fae2641b89208e78b30e1b3/500x500-000000-80-0-0.jpg",
                ),
                RecentCard(
                  title: "Dadju",
                  image:
                      "https://cdn-images.dzcdn.net/images/artist/cc3b1efce691fc86644748dba8affa21/500x500-000000-80-0-0.jpg",
                ),
                RecentCard(
                  title: "Yamê",
                  image:
                      "https://cdn-images.dzcdn.net/images/artist/bcc9de86c73361137cb083646c30ac31/500x500-000000-80-0-0.jpg",
                ),
              ],
            ),
          ),
          const SectionTitle(title: "Réecoutez vos anciens favoris"),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: const [
                AlbumCard(
                  image:
                      "https://i.scdn.co/image/ab67616d00001e02bcd4f5d60f87fa777b602749",
                  title: "ELOWI C&S",
                  artist: "",
                ),
                AlbumCard(
                  image:
                      "https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/artistmix/7gU9VyFRN3JWPJ5oHOil60/fr",
                  title: "Mix Tayc",
                  artist: "",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/2cbdbb8b019e500873b3885c950c0c6a/500x500-000000-80-0-0.jpg",
                  title: "MEGA BBL",
                  artist: "",
                ),
              ],
            ),
          ),

          const SectionTitle(title: "Album"),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: const [
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/4802df82395b116e56239e2af8e3f0c6/500x500-000000-80-0-0.jpg",
                  title: "DACHIBA KOUMGBA TCHAIBA : DALSHIM",
                  artist: "Himra",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/79ba3cd515942d1dc62f49f859a374fd/500x500-000000-80-0-0.jpg",
                  title: "Ipséité",
                  artist: "Damso",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/7ce6b8452fae425557067db6e6a1cad5/500x500-000000-80-0-0.jpg",
                  title: "DAMN.",
                  artist: "Kendrick Lamar",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/9f217fbedd2a5f415834082886314bf1/500x500-000000-80-0-0.jpg",
                  title: "DIYILEM & BAZARHOFF : GENIUS",
                  artist: "Didi B",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/8a5d4fa5c1b97100bf128909d766f06f/500x500-000000-80-0-0.jpg",
                  title: "Sweetener",
                  artist: "Ariana Grande",
                ),
              ],
            ),
          ),

          const SectionTitle(title: "Recommandation du jour"),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: const [
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/04c4553b80f26e30b8ea24073bfb1390/500x500-000000-80-0-0.jpg",
                  title: "Let You Down",
                  artist: "NF",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/0c424dbe627530cd06a6fd408baba3f3/500x500-000000-80-0-0.jpg",
                  title: "Melodrama",
                  artist: "Lorde",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/b3abd25dc396744dbe95cbb6fcf3e988/500x500.jpg",
                  title: "Cotonou est doux",
                  artist: "Djo Le Magicien",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/6e14fef7ed2c5684a36badd00b693036/500x500-000000-80-0-0.jpg",
                  title: "Deux frères",
                  artist: "PNL",
                ),
              ],
            ),
          ),
          const SectionTitle(title: "Vos artistes préférés"),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: const [
                ArtisteCard(
                  screen:
                      "https://cdn-images.dzcdn.net/images/cover/04c4553b80f26e30b8ea24073bfb1390/500x500-000000-80-0-0.jpg",
                  artistic: "NF",
                ),
                ArtisteCard(
                  screen:
                      "https://cdn-images.dzcdn.net/images/artist/581693b4724a7fcfa754455101e13a44/500x500-000000-80-0-0.jpg",
                  artistic: "The Weeknd",
                ),
                ArtisteCard(
                  screen:
                      "https://cdn-images.dzcdn.net/images/cover/b3abd25dc396744dbe95cbb6fcf3e988/500x500.jpg",
                  artistic: "Djo Le Magicien",
                ),
                ArtisteCard(
                  screen:
                      "https://cdn-images.dzcdn.net/images/cover/6e14fef7ed2c5684a36badd00b693036/500x500-000000-80-0-0.jpg",
                  artistic: "PNL",
                ),
              ],
            ),
          ),

          const SectionTitle(title: "Album & Titre Populaire"),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              children: const [
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/0f9f249484cccbecdc018f06866d3bef/500x500.jpg",
                  title: "Ayoyo",
                  artist: "Djo Le Magicien ft. OPA",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/07d837e8865ce86684a86fb79ccece96/500x500-000000-80-0-0.jpg",
                  title: "Hurry Up Tomorrow",
                  artist: "The Weeknd",
                ),
                AlbumCard(
                  image:
                      "https://cdn-images.dzcdn.net/images/cover/9b67db4c2feb452b65c0ae1314b614a1/500x500-000000-80-0-0.jpg",
                  title: "J'AI MENTI",
                  artist: "Damso",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black.withOpacity(0.9),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Rechercher',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Bibliothèque',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spatial_audio_off),
            label: 'Premium',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Créer'),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String image;
  final String title;
  final String artist;

  const AlbumCard({
    super.key,
    required this.image,
    required this.title,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              image,
              width: 160,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          // Le titre de l'album
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          // L'artiste
          Text(
            artist,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final String label;
  final bool isActive;

  const HeaderButton({
    super.key,
    required this.label,
    this.isActive = false, // Par défaut, ils ne sont pas sélectionnés
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8), // Espace entre les boutons
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF1DB954) : Color(0xFF282828),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.black : Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }
}

class RecentCard extends StatelessWidget {
  final String title;
  final String image;

  const RecentCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    // Flexible permet d'occuper la moitié de l'écran
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1), // Gris très léger
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
            child: Image.network(
              image,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class ArtisteCard extends StatelessWidget {
  final String screen;
  final String artistic;

  const ArtisteCard({super.key, required this.screen, required this.artistic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.network(
              screen,
              width: 160,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            artistic,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
