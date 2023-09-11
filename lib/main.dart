import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/2.layout/2.3%20adaptive%20design/based_on_orientation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasedOnOrientation(),
    );
  }
}
