import 'package:flutter/material.dart';
import 'package:food_app_recommondation/widget/reading_card_list.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ReadingListCard(
            image: 'assets/5.png',
            title: 'Humberger',
            rating: 9.2,
            pressDetails: () {},
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          ReadingListCard(
            color: Colors.red,
            image: 'assets/5.png',
            title: 'Humberger',
            rating: 9.2,
            pressDetails: () {},
          ),
          SizedBox(
            width: 20,
          ),
          ReadingListCard(
            color: Colors.red,
            image: 'assets/5.png',
            title: 'Humberger',
            rating: 9.2,
            pressDetails: () {},
          ),
        ],
      ),
    );
  }
}
