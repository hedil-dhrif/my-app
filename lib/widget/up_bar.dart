import 'package:flutter/material.dart';
import 'package:food_app_recommondation/widget/mybutton.dart';

class UpBar extends StatelessWidget {
  const UpBar({
    Key key,
    @required this.icons1,
  }) : super(key: key);

  final IconData icons1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Image.asset(
                'assets/5.png',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Are you hungry?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 70,
        ),
        MyButton(
          icon: icons1,
        ),
      ],
    );
  }
}

