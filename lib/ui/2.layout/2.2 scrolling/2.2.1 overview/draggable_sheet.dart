import 'package:flutter/material.dart';

class DraggableSheet extends StatelessWidget {
  const DraggableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'DraggableScrollableSheet';
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: SizedBox.expand(
          child: DraggableScrollableSheet(
            // initial size of sheet
            initialChildSize: 0.3,
            // min size of sheet
            minChildSize: 0.2,
            // max size of sheet
            maxChildSize: 0.6,
            builder: (context, scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  itemCount: 20,
                  controller: scrollController,
                  itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                ),
              );
            },
          ),
        ));
  }
}
