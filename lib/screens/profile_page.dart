import 'package:flutter/material.dart';
import 'package:food_app_recommondation/widget/build_text.dart';
import 'package:food_app_recommondation/animation/fade_animation.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                height: 200,
                width: 200,
                child: FadeAnimation(
                  1.2,
                  CircleAvatar(
                    radius: 200,
                    backgroundImage: AssetImage('assets/images.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation(
              1.4,
              BuildText(
                hinttext: 'Full Name',
                icon: Icon(Icons.drive_file_rename_outline),
              ),
            ),
            FadeAnimation(
              1.6,
              BuildText(
                hinttext: 'Adress',
                icon: Icon(Icons.location_on_outlined),
              ),
            ),
            FadeAnimation(
                1.8,
                BuildText(
                  hinttext: 'Phone',
                  icon: Icon(Icons.smartphone_outlined),
                )),
            FadeAnimation(
                2,
                BuildText(
                  hinttext: 'E-mail',
                  icon: Icon(Icons.email_outlined),
                )),
            FadeAnimation(
                2.2,
                BuildText(
                  hinttext: 'Password',
                  icon: Icon(Icons.lock_outline),
                )),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
