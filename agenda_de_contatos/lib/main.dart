import 'package:agenda_de_contatos/screens/color_schemes.g.dart';
import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Agenda de contatos",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Home(),
      },
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
    ),
  );
}
