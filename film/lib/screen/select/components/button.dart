import 'package:film/screen/pay_ment/pay.dart';
import 'package:flutter/material.dart';

class ButtonSelect extends StatelessWidget {
  const ButtonSelect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Button1(text: "PROCEED TO CHECKOUT"),
        Button2(text1: "24,98 EURO", text2: "2 Tickets for €12,49 each"),
      ],
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        // color: Colors.pink,
          child: Container(
              height: 48,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff8036E7),
                      Color(0xffFF3365),
                      //    Color(0xffFF3365),
                    ],
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(text,
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),),
                  ),
                ],
              )),
          onTap: () {
            // var route = MaterialPageRoute(builder: (context) => SelectSeats());
            // Navigator.push(context, route);
          }
      ),
    );
  }
}


class Button2 extends StatelessWidget {
  const Button2({
    Key? key,required this.text1,required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        // color: Colors.pink,
          child: Container(
              height: 48,
              width: 171,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepPurple,
                      Colors.purpleAccent,
                      //    Color(0xffFF3365),
                    ],
                  )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text1,
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),),
                    Text(text2,
                      style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.white54,),),
                  ],
                ),
              )),
          onTap: () {
            var route = MaterialPageRoute(builder: (context) => PayMent());
            Navigator.push(context, route);
          }
      ),
    );
  }
}