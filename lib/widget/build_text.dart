import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {

  final String hinttext;
  final Icon icon;

  const BuildText({
    this.icon,
    this.hinttext,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: icon,
        ),
      ),
    );
  }
}


