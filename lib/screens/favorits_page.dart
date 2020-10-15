import 'package:flutter/material.dart';
import '../widget/info.dart';
import 'package:food_app_recommondation/animation/fade_animation.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Color(0xFFFFEFBA),
              Color(0xFFeeb89e).withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          children: [
            FadeAnimation(
              1,
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Color(0xFFe67143),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'My Favorits :',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFFe67143),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              1.2,
              Info(
                  image: 'assets/4.png',
                  title: 'Humberger',
                  description: 'Double cheese',
                  price: '10.8'),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              1.4,
              Info(
                  image: 'assets/1.png',
                  title: 'Humberger',
                  description: 'Double cheese',
                  price: '10.8'),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
                1.6,
                Info(
                    image: 'assets/2.png',
                    title: 'Humberger',
                    description: 'Double cheese',
                    price: '10.8')),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
                1.8,
                Info(
                    image: 'assets/3.png',
                    title: 'Humberger',
                    description: 'Double cheese',
                    price: '10.8')),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
              2,
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0xFF2C5364).withOpacity(0.5),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ]),
                margin: EdgeInsets.only(bottom: 50),
                width: 280,
                child: FlatButton(
                  color: Color(0xFF2C5364),
                  padding: EdgeInsets.only(left: 70, top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Order Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
