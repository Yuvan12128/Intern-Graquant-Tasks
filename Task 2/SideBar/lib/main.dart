import 'package:flutter/material.dart';
import 'package:todo_app/pages/contactPage.dart';
import 'package:todo_app/pages/emailPage.dart';
import 'package:todo_app/pages/firstPage.dart';
import 'package:todo_app/pages/homePage.dart';
import 'package:todo_app/pages/settingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/homePage': (context) => HomePage(),
        '/settingPage': (context) => SettingsPage(),
        '/contactPage': (context) => ContactPage(),
        '/emailPage': (context) => EmailPage(),
      },
    );
  }
}
