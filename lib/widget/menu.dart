import 'package:flutter/material.dart';
import 'package:food_app_recommondation/widget/menu_item.dart';


class Menu extends StatelessWidget {
  const Menu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: [
          MenuItem(
            text: 'Sandwiches',
          ),
          SizedBox(width: 20,),
          MenuItem(
            text: 'Salads',
          ),
          SizedBox(width: 20,),
          MenuItem(
            text: 'Dessert',
          ),
          SizedBox(width: 20,),
          MenuItem(
            text: 'Drinks',
          ),
        ],
      ),
    );
  }
}
