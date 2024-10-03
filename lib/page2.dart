import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Diri'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                // image: NetworkImage('https://example.com/background-image.jpg'),
                  image: NetworkImage("assets/images/background2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered Profile content
          Center(
            child: SingleChildScrollView(
              // Tambahkan SingleChildScrollView di sini
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60), // Memberi jarak lebih besar dari AppBar
                  _buildProfileHeader(),
                  const SizedBox(height: 20),
                  _buildCardSection('About Me',
                      'Halo, saya Bergisch Humaira seorang pelajar yang sedang menempuh pendidikan di SMK Wikrama dengan jurusan Pengembangan Pernagkat Lunak dan Gim (PPLG).'),
                  const SizedBox(height: 10),
                  _buildCardSection(
                      'History', 'Saya berada di rombel PPLG XII-2, dan sedang belajar membuat aplikasi mobile menggunakan Flutter.'),
                  const SizedBox(height: 10),
                  _buildCardSection(
                      'Skills', 'HTML, CSS, Laravel'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(
                "assets/images/photo.jpg"), // Ganti dengan URL gambar profil
          ),
          SizedBox(height: 16),
          Text(
            'Bergisch Humaira',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 80, 80, 80),
                shadows: [
                  Shadow(
                      blurRadius: 10, color: Colors.black, offset: Offset(1, 2))
                ]),
          ),
          SizedBox(height: 8),
          // Text(
          //   'Your Job Title',
          //   style: TextStyle(fontSize: 18, color: Colors.white70),
          // ),
        ],
      ),
    );
  }

  Widget _buildCardSection(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 184, 114, 22).withOpacity(0.7),
                const Color.fromARGB(255, 201, 147, 47).withOpacity(0.5)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 8,
                              color: Colors.black38,
                              offset: Offset(2, 2)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
