import 'package:flutter/material.dart';

class ListWheel extends StatelessWidget {
  const ListWheel({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList =List.generate(
      10,
      (index) => Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            "title $index",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
    return Scaffold(
      body: ListWheelScrollView(
        // item's height pixel
        itemExtent: 100,
        // change diameter
        diameterRatio: 1.5,
        // change axies
        // offAxisFraction: -0.5,
        // magnifier
        useMagnifier: true,
        magnification: 1.5,
        children: mockList,
      ),
    );
  }
}