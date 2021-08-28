import 'package:flutter/material.dart';

class BottomNaItem extends StatelessWidget {
  final String image;
  final String title;
  final Function() press;

  const BottomNaItem({Key? key,required this.image,required this.title,required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image : AssetImage(image),
              height: 30,
              fit: BoxFit.cover,
            ),
            Text(
              title,style: TextStyle(fontFamily: 'Gilroy',color: Color(0xFF6D6D80)),
            )

          ],
        ),
    );
  }
}
