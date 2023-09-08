import 'package:flutter/material.dart';

class SliverAppBarVideo extends StatelessWidget {
  const SliverAppBarVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = List.generate(
      100,
      (index) => Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            "title $index",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );

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
