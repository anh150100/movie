import 'package:flutter/material.dart';

class ButtonPayApple extends StatelessWidget {
  const ButtonPayApple({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        // color: Colors.pink,
        child: Container(
            height: 48,
            width:  (MediaQuery.of(context).size.width-39)/2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff4E4E63),
                    Color(0xff212130),
                    //    Color(0xffFF3365),
                  ],
                )
            ),
            child: Center(
              child: Image.asset("assets/image/Group.png",width: 41,height: 24,),
            )),
        onTap: (){},
      ),
    );
  }
}