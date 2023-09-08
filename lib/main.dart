import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/3.scrolling/3.2%20fancy_scolling/sliver_app_bar_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SliverAppBarVideo(),
    );
  }
}
