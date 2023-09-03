import 'package:flutter/material.dart';

class ListWithSpace extends StatelessWidget {
  const ListWithSpace({super.key});

  @override
  Widget build(BuildContext context) {
    final items =
        List.generate(4, (index) => ItemWidget(text: "Item ${index + 1}"));
    // a Column with spaced items
    Widget columnWithSpacedItems =
        LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items),
        ),
      );
    });

    // if you want to use something like [Spacer & Expanded] widgets to fit all space infinitely,
    // use [IntrinsicHeight] Widget so that it does not have render error
    Widget alternativeWidget = LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: items,
            ),
          ),
        ),
      );
    });

    return Scaffold(
      body: columnWithSpacedItems,
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}
