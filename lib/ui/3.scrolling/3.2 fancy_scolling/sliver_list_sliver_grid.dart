import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class SliverListSliverGrid extends StatelessWidget {
  const SliverListSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = MockData.buildMockList(context, quantity: 10);
    final sliverList = SliverList(
      //* use delegate parameter for scroll items
      // explicit list approach
      // delegate: SliverChildListDelegate(mockList),

      // build them lazily approach
      delegate: SliverChildBuilderDelegate(
        (context, index) => mockList[index],
        childCount: mockList.length,
      ),
    );
    final sliverGrid = SliverGrid.count(children: mockList, crossAxisCount: 4);

    return Scaffold(
      body: CustomScrollView(
        slivers: [sliverList, sliverGrid],
      ),
    );
  }
}
