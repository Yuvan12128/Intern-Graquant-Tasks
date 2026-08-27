import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  //Variable
  int _counter = 0;
  //Method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //UI (User Interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Message
          Text('You Pushed the Button This Many Times !'),
          //Counter Value
          Text(_counter.toString(), style: TextStyle(fontSize: 40)),

          //Button
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increament !'),
          ),
        ],
      ),
    );
  }
}
