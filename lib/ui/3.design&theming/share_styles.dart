import 'package:flutter/material.dart';

class ShareStyles extends StatelessWidget {
  const ShareStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Themes',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            'Text with background color',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ),
      // if we want to ignore theme, we can create a ThemeData instance

      //* overriding everything
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   ),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: const Icon(Icons.add),
      //   ),
      // ),

      //* extending parent theme
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pink,
            brightness: Brightness.dark,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
