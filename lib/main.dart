import 'package:flutter/material.dart';
import 'package:flutter_docu_app/theme/app_theme.dart';
import 'package:flutter_docu_app/ui/4.interactivity/gestures/handle_tap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HandleTap(),
      // Create an app theme
      theme: ThemeData(
        useMaterial3: true,

        // Default colors and brightness
        colorScheme: AppTheme.colorScheme,
        // Default `TextTheme` for headlines, titles, bodies of text and more
        textTheme: AppTheme.textTheme,
      ),
      // We may provide a dark theme here
      // darkTheme: ,
    );
  }
}
