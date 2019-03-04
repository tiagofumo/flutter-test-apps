import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  final String type;

  CategoryListItem(this.type);

  @override
  Widget build(BuildContext context) {
    var myIcon;
    switch(this.type) {
      case 'cake':
        myIcon = Icons.cake;
        break;
      case 'call':
        myIcon = Icons.call;
        break;
      case 'camera':
        myIcon = Icons.camera;
        break;
      case 'chat':
        myIcon = Icons.chat;
        break;
      case 'computer':
        myIcon = Icons.computer;
        break;
    }
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
                    myIcon,
                    size: 40.0,
                  )
                ),
                Center(
                  child: Text(
                    'My $type',
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
