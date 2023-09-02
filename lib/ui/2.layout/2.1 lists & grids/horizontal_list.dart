import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Horizontal List";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(width: 160, color: Colors.red),
            Container(width: 160, color: Colors.blue),
            Container(width: 160, color: Colors.green),
            Container(width: 160, color: Colors.yellow),
            Container(width: 160, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
