import 'package:flutter/material.dart';
import 'category.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udacity category',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        body: ListView(
          children: <CategoryListItem>[
            CategoryListItem('cake'),
            CategoryListItem('call'),
            CategoryListItem('camera'),
            CategoryListItem('chat'),
            CategoryListItem('computer'),
          ],
        ),
      )
    );
  }
}

