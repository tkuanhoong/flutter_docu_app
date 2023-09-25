import 'package:flutter/material.dart';

class RetrieveTextFieldValue extends StatelessWidget {
  const RetrieveTextFieldValue({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyCustomForm();
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // create a text controller and use it to retrieve the current value of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when widget is disposed
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(controller: myController),
      ),
      floatingActionButton: FloatingActionButton(
        // when user press the floating action button
        // show the text the user has entered
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myController.text),
                );
              });
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
