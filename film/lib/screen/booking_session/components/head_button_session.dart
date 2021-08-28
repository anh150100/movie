import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        children: [
          Text(
            'Cinemas at Warszawa,PL',
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '16 cinemas found',
            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.white54),
          ),
        ],
      ),

    );
  }
}