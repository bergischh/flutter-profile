import 'package:flutter/material.dart';
import 'page2.dart'; // Import page2.dart

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.username,
    required this.skill,
    required this.sekolah,
    required this.deskripsi,
  });

  final String username;
  final String skill;
  final String sekolah;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Profile card
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(162, 179, 197, 192),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 80.0,
                            backgroundImage:
                                AssetImage('assets/images/photo.jpg'),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            username,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Skill: $skill',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 226, 208, 148),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Sekolah: $sekolah',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 226, 208, 148),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Deskripsi: $deskripsi',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 226, 208, 148),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Navigate to Page2 when See More is clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfileApp(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 167, 117, 51),
                            ),
                            child: const Text(
                              "See More",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
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
