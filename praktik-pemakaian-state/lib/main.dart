import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Demo'),
        ),
        body: Center(
          child: Text(
            'Halo, saya Stateless Widget!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}