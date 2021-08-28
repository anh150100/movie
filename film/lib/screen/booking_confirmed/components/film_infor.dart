import 'package:flutter/material.dart';

import 'infor_cinema.dart';

class FilmInfor extends StatelessWidget {
  const FilmInfor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12,right: 12),
      height: MediaQuery.of(context).size.height*0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white12,
      ),
     child: Column(
       children: [
         SizedBox(height: 16,),
         Container(
           margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Row(children: [
                  Image.asset("assets/image/Movie.png",
                  width:MediaQuery.of(context).size.width*72/375,height: MediaQuery.of(context).size.height*105/812,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*16/375,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Avengers:\nEnd Game",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,fontFamily: "Gilroy", color: Colors.white),),
                      SizedBox(
                            height: 4,
                      ),
                      Text("CLASSIC SESSION • 137 Min",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy", color: Color(0XFF6D6D80)),)
                    ],
                  ),
                  
                ],)
              ],
              ),
         ),
         SizedBox(
           height: MediaQuery.of(context).size.height*16/812,
         ),
         InfoCinema(
           image: "assets/image/Date.png",
           text1: "DATE & TIME",
           text2: "Monday, 29 April • 19:00",
         ),
           InfoCinema(
           image: "assets/image/Date.png",
           text1: "DATE & TIME",
           text2: "Monday, 29 April • 19:00",
         ),
           InfoCinema(
           image: "assets/image/Date.png",
           text1: "DATE & TIME",
           text2: "Monday, 29 April • 19:00",
         ),
           InfoCinema(
           image: "assets/image/Date.png",
           text1: "DATE & TIME",
           text2: "Monday, 29 April • 19:00",
         ),
         Padding(
           padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*108/375,top:33),
           child: Row(
             children: [
               Image.asset("assets/image/Combined Shape1.png",width:12,height:12),
               SizedBox(width:8),
               Text("Get Direction",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: "Gilroy", color: Color(0XFFFF3264)),)
             ],
           ),
           )
       ],
     ),
    );
  }
}
