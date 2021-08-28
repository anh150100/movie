import 'package:film/controller/star_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CinemaItem extends StatelessWidget {
  const CinemaItem({
    Key? key,required this.image,required this.filmName,required this.add,required this.km,
  }) : super(key: key);
  final String image;
  final String filmName;
  final String add;
  final String km;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left:12,right:12,top:12),
      height: MediaQuery.of(context).size.height*100/812,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
         color: Colors.black12,
      ),
     
      child: GestureDetector(
        onTap: (){
       //   context.read<ColorStar>().getColor();
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
            SizedBox(width:16),
            Padding(
              padding: const EdgeInsets.only(top:11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(filmName,style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                  Text(add,style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Colors.white54)),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset("assets/image/3.png",width:16,height:15,color: Color(0xffFF3264),),
                      SizedBox(width:4),
                      Text("Show Sessions",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0xffFF3264)))
                    ],
                    ),
                   
                ],
              ),
            ),
                Expanded(
                      flex:1,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15,right:16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ChangeNotifierProvider(
                            create: (context) => ColorStar(), builder: (context,child)
                              => Container(
                                  child: GestureDetector(
                                    onTap: (){
                                        context.read<ColorStar>().getColor();
                                    },
                                    child: Image.asset("assets/image/Star Icon.png"
                                      ,width: 12,height: 11.45,color: context.watch<ColorStar>().color,))),),
                                SizedBox(
                              height:6.55
                              ),
                              Text(km,style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Colors.white)),
                            ],
                        ),
                      ))
          ],
          ),),
     );
  }
}
