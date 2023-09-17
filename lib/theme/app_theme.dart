import 'package:flutter/material.dart';

class AppTheme {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  );

  static const textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Oswald',
      fontSize: 30,
      fontStyle: FontStyle.italic,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Merriweather',
    ),
    displaySmall: TextStyle(
      fontFamily: 'Pacifico',
    ),
  );
}
