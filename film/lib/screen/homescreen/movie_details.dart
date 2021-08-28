
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/screen/review/components/star_review.dart';
import 'package:film/screen/review/heading_review.dart';
import 'package:film/widget_full/button.dart';
import 'package:film/widget_full/cast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final NearModel itemNear;
  const MovieDetails({Key? key, required this.itemNear}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    var y = (x-168*2)/3;
    return Scaffold(
      backgroundColor: Color(0xff191926),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_back_ios,color: Color(0xff6D6D80),),
                ),
              ],
            ),//
            onPressed: ()
            {
              Navigator.pop(context);
            }),
        title: Row(
          children: [
            Text("Back",style: TextStyle(color:Color(0xff6D6D80),fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy" ),),
            SizedBox(
              width: MediaQuery.of(context).size.width-150,
            ),
            Image.asset("assets/image/Like (1).png",width: 16,height: 14,),


          ],
        ),
        ),
      body: Container(
        child: Column(
          children: [
            Stack(
                children: [
                  Image.network(
                          POSTER_IN_DETAIL_LINK + itemNear.backdrop_path!,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height/2,
                        ),
              Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                //  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black54,
                    Color(0xff191926),
                    //    Color(0xffFF3365),
                  ],
                )
                ),child:Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height/4 - 72/2,
                            ),
                            Center(child: Image.asset("assets/image/Shape.png",width: 72,height: 72,color: Color(0xffFFFFFF),)),
                          //  SizedBox(height: MediaQuery.of(context).size.height/160,),
                            Image.asset("assets/image/PG.png"),
                            Text(itemNear.original_title!,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
                            Row(
                              children: [
                                Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
                                Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
                                Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
                                Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
                                Image.asset("assets/image/Star Icon.png",width: 12,height: 12,),
                                Text(" 125 REVIEW",style: TextStyle(color: Color(0xff6D6D80),fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
                              ],
                            ),

                          ],
                        ),
                      ),
              ), ]
            ),
            Column(
              children: [
                Padding(
                 // width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Storyline",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        height: 80,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics:  ClampingScrollPhysics(),
                          children: [
                             Text(itemNear.overview!,
                               style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,fontFamily: "Gilroy",
                                   color: Colors.white),textAlign: TextAlign.justify,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Cast",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                          SizedBox(width: MediaQuery.of(context).size.width-100,),
                          Text("See All",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xff6D6D80)),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Cast(itemNear: itemNear,),
                       SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                        // var x = MediaQuery.of(context).size.height,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: y-10),
                          child: GestureDetector(
                              child: Container(
                                  height: 46,
                                  width: 168,
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
                                  child: Center(child: Text('Leave A REVIEW',
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (BuildContext context) {
                                    return Container(
                                      margin: EdgeInsets.only(top : AppBar().preferredSize.height*4),
                                      decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(32), topLeft: Radius.circular(32)),
                                        color: Color(0xff212131),
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 16,top: 16),
                                        child: Column(
                                          crossAxisAlignment:  CrossAxisAlignment.start,
                                          children: [
                                            HeadingReview(itemNear: itemNear,),
                                            StarReview(),
                                            SizedBox(height: 20,),
                                            Column(
                                              crossAxisAlignment:  CrossAxisAlignment.start,
                                              children: [
                                                Text(itemNear.title!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF))),
                                                Container(
                                                  padding: EdgeInsets.only(right: 10),
                                                  height: MediaQuery.of(context).size.height - AppBar().preferredSize.height*4 -16 -150 -120 ,
                                                  child: ListView(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    physics:  ClampingScrollPhysics(),
                                                    children: [
                                                      Text(itemNear.overview!,
                                                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,fontFamily: "Gilroy",
                                                            color: Colors.white),textAlign: TextAlign.justify,),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(bottom: 16),
                                                      child: Button(
                                                        text: "SUBMIT REVIEW",
                                                        press:(){},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                    },
                                  isScrollControlled: true,
                               );
                               }
                              ),
                        ),
                        SizedBox(width: y,),
                        Container(
                          child: GestureDetector(
                            // color: Colors.pink,
                              child: Container(
                                  height: 46,
                                  width: 168,
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
                                  child: Center(child: Text('BOOK YOUR TICKET',
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (BuildContext context) {
                                    return Container(
                                        margin: EdgeInsets.only(top : AppBar().preferredSize.height*4),
                                        decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(32), topLeft: Radius.circular(32)),
                                          color: Colors.blueAccent,
                                        )
                                    );
                                    },
                                  isScrollControlled: true,
                                );
                              }
                              ),
                        ),
                      ],
                    ),
                       ],

                  ),
                 ),
              ],
            ),
    ]
    ),
      ));
  }
}

