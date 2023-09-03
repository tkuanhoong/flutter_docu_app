import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = List.generate(
      100,
      (index) => Center(
        child: Text(
          "title $index",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
    Widget gridViewUsingExtent = GridView.extent(
        // Create a grid with not more than 220px width per column.
        // if greater than 220, it would become another column.
        maxCrossAxisExtent: 220,
        children: mockList);
    Widget simpleGrid = GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        // scrollDirection: Axis.horizontal,
        // Generate 100 widgets that display their index in the List.
        children: mockList);
    const title = 'Grid List';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: simpleGrid,
      // body: gridViewUsingExtent,
    );
  }
}
