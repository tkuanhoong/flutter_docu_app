import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/1.introduction/shopping_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: ShoppingList(
          products: [
            Product(name: 'Eggs'),
            Product(name: 'Flour'),
            Product(name: 'Chocolate chips'),
          ],
        ),
    ),
  );
}
