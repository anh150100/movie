
import 'package:film/controller/chair_controller.dart';
import 'package:film/widget_full/button.dart';
import 'package:flutter/material.dart';
import 'components/armchair1.dart';
import 'components/armchair2.dart';
import 'components/button.dart';
import 'components/choose_arm1.dart';
import 'components/choose_arm2.dart';
import 'components/head.dart';
import 'package:provider/provider.dart';

class SelectSeats extends StatefulWidget {
  @override
  _SelectSeatsState createState() => _SelectSeatsState();
}

class _SelectSeatsState extends State<SelectSeats> with TickerProviderStateMixin {
 // late Color color = Colors.blueAccent;
  List <Widget> rowChair = [

  ];
  List <Widget> columnChair =[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xff191926),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff191926),
          leading: IconButton(
              icon:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,color: Color(0xff6D6D80),
                        ),
                        // Text("Select seats",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),)
                      ],
                    ),
                  ),
                ],
              ),//
              onPressed: ()
              {
                Navigator.pop(context);
              }),
          title:  Text("Select seats",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*5/6,
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Stack(
                      children: [
                        Head(),
                        Container(
                          margin: EdgeInsets.only(top:50),
                          //  height: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(32),topLeft: Radius.circular(32)),
                          gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white10,
                            Colors.transparent,
                            //    Color(0xffFF3365),
                          ],
                        )
                    ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 50,),
                                  Stack(
                                  children: [
                                    Image.asset("assets/image/Line.png"),
                                    Container(
                                      margin: EdgeInsets.only(left:26,top:69),
                                      child:Column(
                                        children: [
                                          ChooseArm1(),
                                          ChooseArm2(),
                                      // SizedBox(
                                      //   height:100 ,
                                      // ),

                                    ],
                                  )

                              ),

                            ],
                          ),


                        ]
                    ),
                  )
                ],
                  ),
                ],),
              ),


              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Center(child: ButtonSelect()),
                      ),
                    ],
                  ),)
             // ButtonSelect(),
                ],
              )
          ),
    );
  }
}



