import 'package:flutter/material.dart';

class ChooseDate extends StatelessWidget {
  const ChooseDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose Date",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
        SizedBox(
          height: 10,
        ),
        ChooseDate(),
      ],
    );
  }
}