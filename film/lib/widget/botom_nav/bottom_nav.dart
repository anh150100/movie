

import 'package:flutter/material.dart';

import 'bottom_na_item.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        height:80,
        color: Color(0XFF191926),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNaItem(
              image: "assets/image/Combined Shape.png",
              title: "MOVIES",
              press: (){},
            ),
            BottomNaItem(
              image: "assets/image/2.png",
              title: "TICKETS",
              press: (){},
            ),
            BottomNaItem(
              image: "assets/image/3.png",
              title: "CINEMAS",
              press: (){},
            ),
            BottomNaItem(
              image: "assets/image/Path.png",
              title: "FAVOURITE",
              press: (){},
            ),
            BottomNaItem(
              image: "assets/image/profile.png",
              title: "PROFILE",
              press: (){},
            ),
          ]
        ),
    );
  }
}
