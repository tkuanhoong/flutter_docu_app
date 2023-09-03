import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/1.introduction/shopping_list.dart';
import 'package:flutter_docu_app/ui/2.layout/2.1%20lists%20&%20grids/grid_view_example.dart';
import 'package:flutter_docu_app/ui/2.layout/2.1%20lists%20&%20grids/horizontal_list.dart';
import 'package:flutter_docu_app/ui/2.layout/2.1%20lists%20&%20grids/list_view_example.dart';
import 'package:flutter_docu_app/ui/2.layout/build_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GridViewExample(),
    );
  }
}
