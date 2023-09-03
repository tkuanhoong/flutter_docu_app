import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/2.layout/2.1%20lists%20&%20grids/different_item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DifferentItemList(),
    );
  }
}
