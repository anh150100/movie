import 'package:film/screen/booking_session/components/time_classic.dart';
import 'package:flutter/material.dart';

class ChooseTimeClassic extends StatelessWidget {
  const ChooseTimeClassic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose Time",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: "Gilroy")),
        SizedBox(
          height: 20,
        ),
        Text("CLASSIC SESSION",style: TextStyle(color: Colors.white70,fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
        SizedBox(
          height: 8,
        ),
        TimeClassic(),
      ],
    );
  }
}