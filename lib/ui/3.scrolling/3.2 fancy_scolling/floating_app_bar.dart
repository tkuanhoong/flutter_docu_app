import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class FloatingAppBar extends StatelessWidget {
  const FloatingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = MockData.buildMockList(context, quantity: 100);
    final sliverList =
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return mockList[index];
    }));
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text("Floating App Bar"),
          floating: true,
          expandedHeight: 200,
          flexibleSpace: Placeholder(),
        ),
        // sliverList,
        SliverList(
          // Use a delegate to build items as they're scrolled on screen.
          delegate: SliverChildBuilderDelegate(
            // The builder function returns a ListTile with a title that
            // displays the index of the current item.
            (context, index) => ListTile(title: Text('Item #$index')),
            // Builds 1000 ListTiles
            childCount: 1000,
          ),
        )
      ]),
    );
  }
}
