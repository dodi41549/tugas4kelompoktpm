import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bantuan'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Cara Penggunaan Aplikasi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Text(
              '1. Login',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Menu login yaitu menu pertama yang muncul dalam aplikasi sebelum masuk ke dalam menu utama aplikasi. Username untuk login yaitu 123200011 dan passwordnya 123200155.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20.0),
            Text(
              '2. Menu Utama',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Pada menu utama terdapat 4 menu yaitu menu anggota berisi data anggota kelompok, menu stopwatch, menu situs rekomendasi beserta link nya, dan menu favorit.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20.0),
            Text(
              '3. Bottom Navigation',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Pada tampilan bawah aplikasi terdapat bottom navigation yang terdiri dari 3 tombol yaitu home untuk kembali ke menu home, help untuk menu help, dan logout untuk keluar dari menu aplikasi atau kembali ke login. ',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
