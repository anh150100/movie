import 'package:flutter/material.dart';

import 'armchair1.dart';

class ChooseArm1 extends StatelessWidget {
  const ChooseArm1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      List.generate(12, (indexColumn) {
        if(indexColumn==4||indexColumn==8){
          return Container(height: 16,);
        }
        return  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(rowChairName(indexColumn),style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300,fontFamily: "Gilroy",color: Color(0xff3B3B4D)),),
            // SizedBox(width: 46,),
            // Armchair(),
            Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(10, (index) {
                      if(indexColumn==0||indexColumn==1){
                        if(index==0||index==9||index==4||index==5){
                          return Container(width: 16,);
                        }
                      }
                      else {
                        if(index==4||index==5){
                          return Container(width: 16,);
                          //rowChair.add(Container(width: 16,));
                        }
                      }

                      return Armchair(
                        width: (MediaQuery.of(context).size.width - 36 - 160)/10,
                      );
                    }),
                  ),
                )),

            Padding(
              padding: const EdgeInsets.only(right:26 ),
              child: Text(rowChairName(indexColumn),style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300,fontFamily: "Gilroy",color: Color(0xff3B3B4D)),),
            ),
          ],
        );
      }),

    );
  }
  rowChairName(index){
    switch (index){
      case 0 : return "A";
      case 1 : return "B";
      case 2 : return "C";
      case 3 : return "D";
    //   case 4 : return "E";
      case 5 : return "F";
      case 6 : return "G";
      case 7 : return "H";
    //  case 8 : return "I";
      case 9 : return "K";
      case 10 :return "L";
      case 11: return "M";

    }
  }
}