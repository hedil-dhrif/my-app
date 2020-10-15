import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:food_app_recommondation/widget/bottom_bar.dart';
import 'package:food_app_recommondation/widget/up_bar.dart';
import 'package:food_app_recommondation/widget/menu.dart';
import 'package:food_app_recommondation/widget/recommended.dart';
import 'package:food_app_recommondation/widget/menulist.dart';
import 'favorits_page.dart';
import 'profile_page.dart';
import 'package:food_app_recommondation/animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum BottomIcons { Home, Favorite, Account, Recommend }

class _HomePageState extends State<HomePage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  var icons1 = Icons.settings;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? Center(
                  child: SingleChildScrollView(
                    child: FadeAnimation(
                      1,
                      Container(
                        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
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
                            UpBar(icons1: icons1),
                            Search(),
                            Row(
                              children: [
                                FadeAnimation(
                                  1.2,
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Recommended',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                FadeAnimation(
                                  1.2,
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'View all',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FadeAnimation(
                              1.4,
                              Recommended(),
                            ),
                            FadeAnimation(
                              1.6,
                              Menu(),
                            ),
                            FadeAnimation(
                              1.8,
                              MenuList(),
                            ),
                            SizedBox(
                              height: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Favorite
              ? Center(
                  child: Favorites(),
                )
              : Container(),
          bottomIcons == BottomIcons.Account
              ? Center(
                  child: Profile(),
                )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding:
                  EdgeInsets.only(left: 24, right: 24, bottom: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.home,
                      text: "Home"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Favorite;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Favorite ? true : false,
                      icons: EvaIcons.heartOutline,
                      text: "Favorite"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Account;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Account ? true : false,
                      icons: EvaIcons.personOutline,
                      text: "Account"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 25,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "What would you like to eat?",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
