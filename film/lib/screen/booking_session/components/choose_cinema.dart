import 'package:flutter/material.dart';

class ChooseCinema extends StatelessWidget {
  const ChooseCinema({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text("Choose Cinema",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(right: 12),
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Color(0xff404056),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset("assets/image/Pic.png",width: 64,height: 64,),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Multikino: Atrium Targówek",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
                    SizedBox(height: 2,),
                    Text("Głębocka 15, 03-287",style: TextStyle(color: Colors.white70,fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
                  ],
                ),
              ),
             // SizedBox(width: 50,),
              Expanded(
                flex: 1,
                child:
                  Icon(Icons.keyboard_arrow_down,color: Color(0xff717187),),
              ),
            ],
          ),
        )
      ],
    );
  }
}