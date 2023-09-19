import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favouriteCount = 41;
  void _toggleFavorite() {
    setState(() {
      _isFavorited ? _favouriteCount -= 1 : _favouriteCount += 1;
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: _toggleFavorite,
            icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 25,
          child: Text('$_favouriteCount'),
        ),
      ],
    );
  }
}
