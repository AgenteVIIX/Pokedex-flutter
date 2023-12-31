import 'package:flutter/material.dart';
import 'package:pokedex/views/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Pokedex",
      home: HomePage(),
    );
  }
}
