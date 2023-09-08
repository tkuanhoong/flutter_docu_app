import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class SliverAppBarVideo extends StatelessWidget {
  const SliverAppBarVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = MockData.buildMockList(context);

    final sliverAppBar = SliverAppBar(
      title: const Text('SliverAppBar'),
      expandedHeight: 200,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset('assets/images/post1.jpg'),
      ),
    );

    final sliverList = SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => mockList[index],
        childCount: mockList.length,
      ),
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [sliverAppBar, sliverList],
      ),
    );
  }
}
