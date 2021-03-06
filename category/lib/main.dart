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
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
              childAspectRatio: 5,
              children: <CategoryListItem>[
                CategoryListItem(
                  label: 'cake',
                  icon: Icons.cake,
                ),
                CategoryListItem(
                  label: 'call',
                  icon: Icons.call,
                ),
                CategoryListItem(
                  label: 'camera',
                  icon: Icons.camera,
                ),
                CategoryListItem(
                  label: 'chat',
                  icon: Icons.chat,
                ),
                CategoryListItem(
                  label: 'computer',
                  icon: Icons.computer,
                ),
              ],
            );
          },
        ),
      )
    );
  }
}

