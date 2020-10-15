import 'package:flutter/material.dart';


class MenuItem extends StatelessWidget {

  final String text;

  const MenuItem({
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xFFe67143).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}