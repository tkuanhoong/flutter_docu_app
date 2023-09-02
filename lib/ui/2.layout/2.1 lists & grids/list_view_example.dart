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
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
