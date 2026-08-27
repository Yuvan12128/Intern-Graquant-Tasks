import 'package:flutter/material.dart';
import 'package:todo_app/pages/ProfilePage.dart';
import 'package:todo_app/pages/homePage.dart';
import 'package:todo_app/pages/settingsPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps tracj if the currecnt page to display
  int _selectedIndex = 0;

  //this methos updates the new selected index
  void _voidnavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //Home Page
    HomePage(),
    //Profile Page
    ProfilePage(),
    //Setting Page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page '),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _voidnavigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Eettings',
          ),
        ],
      ),
    );
  }
}
