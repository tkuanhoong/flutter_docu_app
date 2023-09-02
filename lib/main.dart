import 'package:flutter/material.dart';
import 'package:flutter_docu_app/ui/1.introduction/shopping_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: ShoppingList(
          products: [
            Product(name: 'Flour'),
            Product(name: 'Eggs'),
            Product(name: 'Chocolate chips'),
          ],
        ),
    ),
  );
}
