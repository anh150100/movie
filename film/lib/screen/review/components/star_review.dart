import 'package:flutter/material.dart';

class StarReview extends StatelessWidget {
  const StarReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
        SizedBox(
          width: 20,
        ),
        Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
        SizedBox(
          width: 20,
        ),
        Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
        SizedBox(
          width: 20,
        ),
        Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
        SizedBox(
          width: 20,
        ),
        Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
      ],
    );
  }
}