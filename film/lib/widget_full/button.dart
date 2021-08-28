import 'package:film/screen/select/select_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({
    Key? key,required this.text,required this.press,
  }) : super(key: key);
      final String text;
      final Function() press;
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
              child: Center(child: Text(text,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
          onTap: press,
      ),
    );
  }
}

