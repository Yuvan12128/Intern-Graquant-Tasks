import 'package:flutter/material.dart';
import './widgets/body.dart';

const String fileName = 'error.screen';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
