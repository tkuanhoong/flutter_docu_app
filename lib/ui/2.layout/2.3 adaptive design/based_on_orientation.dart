import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class BasedOnOrientation extends StatelessWidget {
  const BasedOnOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: MockData.buildMockList(context, quantity: 100),
          );
        },
      ),
    );
  }
}
