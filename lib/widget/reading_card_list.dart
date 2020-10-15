import 'package:food_app_recommondation/consttants.dart';
import 'package:food_app_recommondation/widget/food_rating.dart';
import 'package:flutter/material.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final Function pressDetails;
  final Color color;

  const ReadingListCard({
    Key key,
    this.image,
    this.color,
   this.title,
    this.rating,
    this.pressDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 20),
      height: 170,
      width: 150,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
              ),
            ),
          ),
          Image.asset(
            image,
            width: 100,
          ),
          Positioned(
            top: 35,
            right: 5,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: color,
                  ),
                  onPressed: () {},
                ),
                FoodRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 110,
            child: Container(
              height: 35,
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
