import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page '),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            //common to place a drawer header here
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            ListTile(
              leading: Icon(Icons.home, color: Colors.amber),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/settingPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contactPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                Navigator.pushNamed(context, '/emailPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
