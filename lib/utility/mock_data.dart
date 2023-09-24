import 'package:flutter/material.dart';

class MockData {
  static List<Widget> buildMockList(context, {required int quantity}) {
    return List.generate(
      quantity,
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
  }

  static final listItems =
      List<String>.generate(20, (index) => 'Item ${index + 1}');
}
