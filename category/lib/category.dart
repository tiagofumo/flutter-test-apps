import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CategoryListItem extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryListItem({
    Key key,
    @required this.label,
    @required this.icon,
  }) : assert(label != null),
       assert(icon != null),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow[200],
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(10.0),
            highlightColor: Colors.yellow,
            splashColor: Colors.yellow[400],
            onTap: () {
              print('I was tapped!');
            },
            child: Row(
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 25.0),
                  child: Icon(
                    icon,
                    size: 40.0,
                  )
                ),
                Center(
                  child: Text(
                    'My $label',
                    style: TextStyle(
                      fontSize: 20.0
                    )
                  )
                )
              ]
            ),
          )
        )
      )
    );
  }
}
