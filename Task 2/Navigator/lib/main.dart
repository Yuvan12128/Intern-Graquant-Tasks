import 'package:flutter/material.dart';
import 'package:todo_app/pages/first_Page.dart';
import 'package:todo_app/pages/second_page.dart';

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
        '/firstpage':(context) => FirstPage(),
        '/secondpage':(context) => SecondPage()
      },
    );
  }
}