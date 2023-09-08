import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class ListWheel extends StatelessWidget {
  const ListWheel({super.key});

  @override
  Widget build(BuildContext context) {
    final mockList = MockData.buildMockList(context);
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
