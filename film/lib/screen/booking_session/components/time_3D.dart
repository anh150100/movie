import 'package:film/screen/booking_session/components/time_classic.dart';
import 'package:flutter/material.dart';

class Time3D extends StatelessWidget {
  const Time3D({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("3D SESSION",style: TextStyle(color: Colors.white70,fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
        SizedBox(
          height: 8,
        ),
        TimeClassic(),
      ],
    );
  }
}