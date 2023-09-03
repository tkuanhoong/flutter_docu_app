import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  final List<String> items;
  const LongList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';
    // ListView.builder() constructor creates items as they’re scrolled onto the screen (use in long list)
    final Widget listViewWithBuilder = ListView.builder(
      itemCount: items.length,
      // To specify each item’s extent, you can use either itemExtent or prototypeItem
      // Specifying either is more efficient than letting the children determine their own extent
      prototypeItem: ListTile(
        title: Text(items.first),
      ),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );

    // ListView constructor, which requires creating all items at once (use in short list)
    final Widget listViewWithoutBuilder = ListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          title: Text(items[index]),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: listViewWithBuilder,
    );
  }
}
