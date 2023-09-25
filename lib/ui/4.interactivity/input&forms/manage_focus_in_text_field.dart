import 'package:flutter/material.dart';
import 'package:flutter_docu_app/components/app_bar_with_title.dart';

class ManageFocusInTextField extends StatefulWidget {
  const ManageFocusInTextField({super.key});

  @override
  State<ManageFocusInTextField> createState() => _ManageFocusInTextFieldState();
}

class _ManageFocusInTextFieldState extends State<ManageFocusInTextField> {
  late FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWithTitle(title: 'Text Field Focus'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // focus a text field as soon as it's visible
            const TextField(
              autofocus: true,
            ),
            // focus a text field when a button is tapped
            TextField(
              focusNode: myFocusNode,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          // give focus to text field using myFocusNode
          myFocusNode.requestFocus();
        },
      ),
    );
  }
}
