import 'package:flutter/material.dart';
import 'package:flutter_docu_app/components/app_bar_with_title.dart';

class FormWithValidationExample extends StatelessWidget {
  const FormWithValidationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWithTitle(title: 'Form Validation Demo'),
      body: FormWithValidation(),
    );
  }
}

class FormWithValidation extends StatefulWidget {
  const FormWithValidation({super.key});

  @override
  State<FormWithValidation> createState() => _FormWithValidationState();
}

class _FormWithValidationState extends State<FormWithValidation> {
  // create global key that uniquely identify the form widget
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if form is valid, or false otherwise
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
