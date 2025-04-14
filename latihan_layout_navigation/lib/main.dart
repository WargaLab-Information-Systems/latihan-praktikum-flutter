import 'package:flutter/material.dart';
import 'package:latihan_layout_navigation/latihan_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LayoutPage(), // <-- PASTIKAN INI ADA
    );
  }
}
