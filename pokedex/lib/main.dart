import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pokedex",
      home: Home(),
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xFFE3350D),
        ),
      ),
    ),
  );
}
