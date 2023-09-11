import 'package:flutter/material.dart';

class BasicScolling extends StatelessWidget {
  const BasicScolling({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Basic Scrolling";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Scrollbar(
        // thumb = scrollbar
        // track = bar along which the thumb moves
        // By default, only thumb is visible
        // Force the scrollbar to always shown
        thumbVisibility: true,
        // Force the track to always shown
        trackVisibility: true,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            title: Text("Item $index"),
          ),
        ),
      ),
    );
  }
}
