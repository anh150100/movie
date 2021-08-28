import 'package:flutter/material.dart';

class ButtonPay extends StatelessWidget {
  const ButtonPay({
    Key? key,required this.text,required this.width,
  }) : super(key: key);
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
        width:width,// MediaQuery.of(context).size.width,
        height: 48,
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.center,
                  colors: [
                    Color(0xff404056),
                    Color(0xff222232),
                    //    Color(0xffFF3365),
                  ],
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(text,//"Enter cardholder name"
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.white54),),
                ),
              ],
            ),),
          onTap:(){},
        )
    );
  }
}