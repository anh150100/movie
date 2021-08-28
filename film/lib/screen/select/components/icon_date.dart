import 'package:flutter/material.dart';

class IconDate extends StatelessWidget {
  const IconDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
          gradient:  LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff8036E7),
              Color(0xffFF3365),
              //    Color(0xffFF3365),
            ],
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("27",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
          Text("Saturday",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
        ],
      ),
    );
  }
}
