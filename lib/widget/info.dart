import 'package:flutter/material.dart';


class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      height: 130,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          SizedBox(width: 25,),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 25,),
          Text(
            '\$ $price',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54
            ),
          ),
        ],
      ),
    );
  }
}

