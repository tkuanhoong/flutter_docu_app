import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.map),
            title: const Text('Map'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.photo_album),
            title: const Text('Album'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
          ),
        ],
      ),
    );
  }
}
