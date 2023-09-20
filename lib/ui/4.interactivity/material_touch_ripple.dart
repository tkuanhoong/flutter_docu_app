import 'package:flutter/material.dart';

class MaterialTouchRipple extends StatelessWidget {
  const MaterialTouchRipple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Demo'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tap'),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Flat Button'),
          ),
        ),
      ),
    );
  }
}
