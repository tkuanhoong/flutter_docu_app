import 'package:flutter/material.dart';
import 'package:flutter_docu_app/components/app_bar_with_title.dart';

class HandleChangesToTextField extends StatelessWidget {
  const HandleChangesToTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const HandleChangesForm();
  }
}

class HandleChangesForm extends StatefulWidget {
  const HandleChangesForm({super.key});

  @override
  State<HandleChangesForm> createState() => _HandleChangesFormState();
}

class _HandleChangesFormState extends State<HandleChangesForm> {
  int countText = 0;
  String text2 = '';
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_listenToLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _listenToLatestValue() {
    setState(() {
      text2 = myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 2 ways to handle form changes
    //  1. use onChanged callback
    //  2. use TextEditingController
    return Scaffold(
      appBar: const AppBarWithTitle(title: "Retrieve Text Input"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Try to type something on text fields below"),
            //  1. use onChanged callback
            TextField(
              onChanged: (newText) {
                setState(() {
                  // use characters when dealing with use input
                  // as text may contain complex characters
                  // ensure every character is counted correctly
                  countText = newText.characters.length;
                });
              },
            ),
            Text('Text count: $countText'),
            //  2. use TextEditingController
            TextField(
              controller: myController,
            ),
            Text('Data binding text: $text2'),
          ],
        ),
      ),
    );
  }
}
