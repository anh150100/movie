import 'package:film/screen/booking_session/components/time_3D.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/button_session.dart';
import 'components/choose_cinema.dart';
import 'components/choose_time_screen.dart';
import 'components/date.dart';
import 'components/time_classic.dart';
class BookSession extends StatefulWidget {
  @override
  _BookSessionState createState() => _BookSessionState();
}

class _BookSessionState extends State<BookSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191926),//Color(0xff222232),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff191926),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
            "Choose Session",
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),
        ),
      ),
     body: Container(
       margin: EdgeInsets.only(left: 12),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ChooseCinema(),
           SizedBox(
             height: 50,
           ),
           ChooseDate(),
           SizedBox(
             height: 50,
           ),
           ChooseTimeClassic(),
           SizedBox(
             height: 8,
           ),
           Time3D(),
        ButtonChooseSession(),
         ],
       ),
     ) ,
    );
  }
}















