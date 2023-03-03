import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pokedex",
      home: Home(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFE3350D),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
