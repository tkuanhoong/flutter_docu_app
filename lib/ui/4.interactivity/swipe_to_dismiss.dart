import 'package:flutter/material.dart';
import 'package:flutter_docu_app/utility/mock_data.dart';

class SwipeToDismiss extends StatefulWidget {
  const SwipeToDismiss({super.key});

  @override
  State<SwipeToDismiss> createState() => _SwipeToDismissState();
}

class _SwipeToDismissState extends State<SwipeToDismiss> {
  @override
  Widget build(BuildContext context) {
    final items = MockData.listItems;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissing Items'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              // Each Dismissible must contain a Key.
              // Key allow Flutter to uniquely identify widgets.
              key: Key(item),
              // What to do after an item from the data source
              onDismissed: (direction) {
                // Remove item from the data source
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$item dismissed'),
                  ),
                );
              },
              // Show red background as the item is swiped away
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                title: Text(item),
              ),
            );
          }),
    );
  }
}
