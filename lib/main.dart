import 'package:flutter/material.dart';
import 'package:glassmorphism_testing/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GlassMorphism",
      home: HomeMainView(),
    );
  }
}