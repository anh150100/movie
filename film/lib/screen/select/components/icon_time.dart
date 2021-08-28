import 'package:flutter/material.dart';

class IconTime extends StatelessWidget {
  const IconTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
          gradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff222232),
              Color(0xff404056),
              //    Color(0xffFF3365),
            ],
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("19:00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
          //    Text("Saturday",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
        ],
      ),
    );
  }
}