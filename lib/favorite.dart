import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'help.dart';
import 'home.dart';
import 'login.dart';

class MenuItem {
  final String name;
  final String description;
  final IconData icon;
  final String link;

  MenuItem({
    required this.name,
    required this.description,
    required this.icon,
    required this.link,
  });
}

class FavoriteMenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'YouTube',
      description: 'Video-sharing platform',
      icon: Icons.video_collection,
      link: 'https://www.youtube.com/',
    ),
    MenuItem(
      name: 'Steam',
      description: 'Video game digital distribution service',
      icon: Icons.games,
      link: 'https://store.steampowered.com/',
    ),
    MenuItem(
      name: 'Shopee',
      description: 'Online shopping platform',
      icon: Icons.shopping_bag,
      link: 'https://shopee.co.id/',
    ),
    MenuItem(
      name: 'Brainly',
      description: 'Online learning community',
      icon: Icons.school,
      link: 'https://brainly.co.id/',
    ),
    MenuItem(
      name: 'Netflix',
      description: 'Streaming platform for TV shows and movies',
      icon: Icons.movie,
      link: 'https://www.netflix.com/',
    ),
    MenuItem(
      name: 'ESPN',
      description: 'Sports news and live streaming platform',
      icon: Icons.sports_basketball,
      link: 'https://www.espn.com/',
    ),
  ];

  void _launchURL(String url) {
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Menu'),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: menuItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _launchURL(menuItems[index].link),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    menuItems[index].icon,
                    size: 64.0,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    menuItems[index].name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    menuItems[index].description,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
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
