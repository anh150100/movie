import 'package:flutter/material.dart';

class InfoCinema extends StatelessWidget {
  const InfoCinema({
    Key? key,required this.image,required this.text1,required this.text2,
  }) : super(key: key);
  final String image;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
              children:[
                Padding(
                    padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*108/375,right:MediaQuery.of(context).size.width*20/375 ) ,
                    child: Image.asset("assets/image/Devider.png"),
     ),
                Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left:45, right:45,bottom:20,top:20),
                    child: Image.asset(image,width:16,height: 16,),
                  ),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(text1,style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy", color: Color(0XFF6D6D80)),),
                      SizedBox(
                       height:2,
                      ),
                      Text(text2,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy", color: Colors.white),)
         ],
       ),
     ],
                )
              ]
            );
  }
}