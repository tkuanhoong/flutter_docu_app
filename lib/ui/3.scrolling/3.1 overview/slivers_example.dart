import 'package:flutter/material.dart';

class SliversExample extends StatelessWidget {
  const SliversExample({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = List.generate(
      10,
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
    //* Not recommend to use ShrinkWrap - big performance problem
    //* if one of those inner list contain lots of widgets, especially with animations,
    //* high risk of dropped frames, jank, stutters
    // final outerListChildren = <ListView>[
    //   ListView(
    //* Flutter requires inner list item to completely evaluate itself and figure out its full size,
    //* behaving just like 1 widget, this is exactly what shrinkWrap does - forcibly evalutes entire list of widgets
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     children: mockList,
    //   ),
    //   ListView(
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     children: mockList,
    //   )
    // ];
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('ShrinkWrap'),
    //   ),
    //   body: ListView.builder(
    //     itemCount: outerListChildren.length,
    //     itemBuilder: (context, index) {
    //       return outerListChildren[index];
    //     },
    //   ),
    // );

    //* How to fix it? - use Slivers

    final outerListChildren = <SliverList>[
      SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => mockList[index],
            childCount: mockList.length),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => mockList[index],
            childCount: mockList.length),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Slivers'),
      ),
      body: CustomScrollView(
        slivers: outerListChildren,
      ),
    );
  }
}
