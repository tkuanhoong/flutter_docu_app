import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  const StyledTextField({super.key});

  Widget titleText(BuildContext context, {required String text}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 26,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Styling Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(context, text: 'TextField with hintText'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            titleText(context, text: 'TextFormField with hintText'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Enter your username"),
              ),
            ),
            titleText(context, text: 'TextField with label'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter a search term")),
              ),
            ),
            titleText(context, text: 'TextFormField with label'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text("Enter your username")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
