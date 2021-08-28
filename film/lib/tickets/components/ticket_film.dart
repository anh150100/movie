import 'package:film/tickets_details/tickets_details.dart';
import 'package:flutter/material.dart';

class TicketFilm1 extends StatelessWidget {
  const TicketFilm1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(12),
          height: MediaQuery.of(context).size.height*120/812,
          width: MediaQuery.of(context).size.width*351/375,
          
          child: GestureDetector(
            onTap: (){
              var route = MaterialPageRoute(builder: (context) => TicketsDetails());
               Navigator.push(context, route);
            },
            child: Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
             color: Colors.white10
            ),
              child: Row(
                children: [
                    Column(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20,right:16,top:16,bottom:12),
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wonder\nWoman 1984",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                            SizedBox(height:12),
                            Text("DATE & TIME",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                             SizedBox(height:2),
                            Text("27 April • 19:00",style: TextStyle(fontFamily: "Gilroy",fontSize: 12,fontWeight: FontWeight.w800,color: Colors.white)),
                          ],
                        ),
                      ),
                    ],),
                    Padding(
                      padding: const EdgeInsets.only(top:16,bottom:16),
                      child: Image.asset("assets/image/Devider (1).png"),
                    ),
                    SizedBox(width:16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                          Container(
                            margin: EdgeInsets.only(right: 6,top: 6,left: MediaQuery.of(context).size.width*161/375+9,),
                            width: 43,height: 16,
                            decoration: BoxDecoration(
                              color: Color(0xffFF3365),
                              borderRadius: BorderRadius.all(Radius.circular(4))
                              ),
                              child: Center(child: Text("TODAY",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Colors.white))),
                            ),
                          
                        ],),
                        Row(
                          children: [
                            Column(children: [
                              Text("Hall",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                              SizedBox(height:2),
                              Text("H2",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                            ],),
                            SizedBox(width:12),
                            Column(children: [
                              Text("Row",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                              SizedBox(height:2),
                              Text("J",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                            ],),
                            SizedBox(width:12),
                            Column(children: [
                              Text("Seats",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                              SizedBox(height:2),
                              Text("J3, J4",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                            ],),
                          ],
                        ),
                       SizedBox(height:12),
                       Text("Cinema",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                       SizedBox(height:2),
                       Text("Multikino: Atrium Targówek",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                      ],
                      )
              ],),
            ),
            )
        )
    ],);
  }
}


class TicketFilm2 extends StatelessWidget {
  const TicketFilm2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(12),
          height: MediaQuery.of(context).size.height*120/812,
          width: MediaQuery.of(context).size.width*351/375,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
             color: Colors.white10
            ),
          child: GestureDetector(
            onTap: (){},
            child: Row(
              children: [
                  Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20,right:16,top:16,bottom:12),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Avengers:\nEnd Game",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                          SizedBox(height:12),
                          Text("DATE & TIME",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                           SizedBox(height:2),
                          Text("29 April • 22:15",style: TextStyle(fontFamily: "Gilroy",fontSize: 12,fontWeight: FontWeight.w800,color: Colors.white)),
                        ],
                      ),
                    ),
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top:16,bottom:16),
                    child: Image.asset("assets/image/Devider (1).png"),
                  ),
                  SizedBox(width:16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Column(children: [
                            Text("Hall",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                            SizedBox(height:2),
                            Text("A1",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                          ],),
                          SizedBox(width:12),
                          Column(children: [
                            Text("Row",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                            SizedBox(height:2),
                            Text("K",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                          ],),
                          SizedBox(width:12),
                          Column(children: [
                            Text("Seats",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                            SizedBox(height:2),
                            Text("K5, K6",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                          ],),
                        ],
                      ),
                      SizedBox(height:12),
                     Text("Cinema",style: TextStyle(fontFamily: "Gilroy",fontSize: 8,fontWeight: FontWeight.w800,color: Color(0XFF6D6D80))),
                     SizedBox(height:2),
                     Text("Cinema City: Mokotów",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)),
                    ],
                    )
            ],),
            )
        )
    ],);
  }
}