import 'package:flutter/material.dart';
import 'package:food_on_time/constant.dart';
import 'package:food_on_time/screens/mainMenu/mainMenu.dart';

class TrackAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(50); // set height of your choice
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: new Text('Food Tracking'),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        new IconButton(
          color: Colors.white,
          icon: new Icon(Icons.close),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainMenu();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
