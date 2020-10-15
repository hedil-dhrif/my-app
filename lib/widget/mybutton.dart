import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {

  var icon;

  MyButton({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          icon,
          size: 30,
          color: Color(0xFF2C5364),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}