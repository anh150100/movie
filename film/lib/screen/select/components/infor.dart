import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  const Infor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Text("Avengers: End Game",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
            Text("Multikino: Atrium Targówek",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        Row(
          children: [
            Row(
              children: [
                Image.asset("assets/image/armchair.png",width: 13,height: 12,color: Color(0xff3B3B4D),),
                SizedBox(width: 6.2,),
                Text("BOOKED",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Color(0XFF6D6D80)),)
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              children: [
                Image.asset("assets/image/armchair.png",width: 13,height: 12,color: Color(0xff9D9DAF),),
                SizedBox(width: 6.2,),
                Text("BOOKED",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Color(0XFF6D6D80)),)
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              children: [
                Image.asset("assets/image/armchair.png",width: 13,height: 12,color: Color(0xffFF3364),),
                SizedBox(width: 6.2,),
                Text("BOOKED",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Color(0XFF6D6D80)),)
              ],
            ),
          ],
        )
      ],
    );
  }
}