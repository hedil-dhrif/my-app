import 'package:flutter/material.dart';
import 'package:food_app_recommondation/widget/reading_card_list.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            children: [
              ReadingListCard(
                pressDetails: () {},
                title: 'Salad',
                image: 'assets/3.png',
                rating: 7.9,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              ReadingListCard(
                pressDetails: () {},
                title: 'Salad',
                image: 'assets/3.png',
                rating: 7.9,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ReadingListCard(
                pressDetails: () {},
                title: 'Salad',
                image: 'assets/3.png',
                rating: 7.9,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              ReadingListCard(
                pressDetails: () {},
                title: 'Salad',
                image: 'assets/3.png',
                rating: 7.9,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
