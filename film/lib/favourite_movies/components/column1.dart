import 'package:film/controller/like_controller.dart';
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/near.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class Column1 extends StatelessWidget {
  final NearModel itemNear;
  const Column1({
    Key? key, required this.itemNear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var m=  MediaQuery.of(context).size.width;
    var n = m*166/395-12-8-24-6-16;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child:  Image.network(BG_IN_DETAIL_LINK + itemNear.poster_path!,
                  width: MediaQuery.of(context).size.width*166/395,
                  height:MediaQuery.of(context).size.height*258/812,
                  fit: BoxFit.cover,),
              ),
                Container(
                    height:MediaQuery.of(context).size.height*260/812,
                    width: MediaQuery.of(context).size.width*166/395,
                   decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Colors.transparent, Colors.black54,Color(0xff191926),
                  //    Color(0xffFF3365),
                   ],
                   )
                 ),child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        Padding(
                           padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/image/PG (1).png",width:24,height:24),
                  ),
                          Padding(
                             padding: EdgeInsets.only(right:6,left:n),
                               child:ChangeNotifierProvider(
                                 create: (context) => ColorLike(), builder: (context,child)
                               => Container(
                                 child: GestureDetector(
                                   onTap: (){
                                     context.read<ColorLike>().getColor();
                                   },
                                   child:Image.asset("assets/image/Like.png",width: 15,height: 15,color:  context.watch<ColorLike>().color,),),),),
                      )
                     ],),
                         SizedBox(
                    height: MediaQuery.of(context).size.height*183/812,
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                         child: Row(
                            children: [
                           Text(itemNear.genre_ids.join(", "),
                          style: TextStyle(fontFamily: "Gilroy",
                            fontSize: 8,fontWeight: FontWeight.w800,color: Color(0xffFF3466))),
                             SizedBox(height: 4,),
                     ],
                     ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                        Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                        Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                        Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                        Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                        SizedBox(width:6),
                        Text("98 REVIEWS",
                        style: TextStyle(fontFamily: "Gilroy",
                        fontSize: 8,fontWeight: FontWeight.w800,color: Colors.white54),
                        )
                      ],
                    ),
              )
              ],
            )

                )
          ],)
        ],
      ),
    );
  }
}