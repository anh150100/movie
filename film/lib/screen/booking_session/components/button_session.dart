
import 'package:film/controller/star_controller.dart';
import 'package:film/screen/select/select_screen.dart';
import 'package:film/widget_full/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'head_button_session.dart';

class ButtonChooseSession extends StatelessWidget {
  const ButtonChooseSession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
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
                      child: Center(child: Text('CHOOSE SESSION',
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.only(top : AppBar().preferredSize.height*2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32), topLeft: Radius.circular(32)),
                            color: Color(0xff212131),
                          ),
                          //  margin: EdgeInsets.only(top:108),
                          child: Container(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            child:
                              Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Head(),
                                  SizedBox(
                                    height: 12,
                                  ),
                                Expanded(
                                  child: ListView(
                                  shrinkWrap: true,
                                  physics:  ClampingScrollPhysics(),
                                  children: [
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                          ItemCinema(),
                                        ],
                                      ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Button(
                                      text: "CHOOSE CINEMA",
                                      press: (){
                                        var route = MaterialPageRoute(builder: (context) => SelectSeats());
                                        Navigator.push(context, route);
                                      },
                                    ),
                                  )
                                ],
                              ),
                          ),
                        );
                      },
                      isScrollControlled: true,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ItemCinema extends StatelessWidget {
  const ItemCinema({
    Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: 65,
          margin: EdgeInsets.only(left: 12,right: 12,bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff404056),
                Color(0xff222232),
                //    Color(0xffFF3365),
              ],
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset("assets/image/Pic.png",width: 50,height: 50,),
              ),
              SizedBox(width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Atlantic Cinema",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),),
                  Text("Chmielna 33, 00-021",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.white54),),
                ],
              ),
              Expanded(
                flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     ChangeNotifierProvider(
                      create: (context) => ColorStar(), builder: (context,child)
                       => Container(
                       child: GestureDetector(
                       onTap: (){
                       context.read<ColorStar>().getColor();
                     },
                        child: Image.asset("assets/image/Star Icon.png",width: 12,height: 11.45,color: context.watch<ColorStar>().color,),),),),
                        SizedBox(height: 5,),
                        Text("0.1 KM",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.white54),)
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

