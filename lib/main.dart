import 'package:flutter/material.dart';
import 'package:project1/components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
