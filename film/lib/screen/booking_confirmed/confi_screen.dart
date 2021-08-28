
import 'package:flutter/material.dart';

import 'components/button_confi.dart';
import 'components/film_infor.dart';
import 'components/infor_cinema.dart';

class ConfirScreen extends StatefulWidget {
  @override
  _ConfirScreenState createState() => _ConfirScreenState();
}

class _ConfirScreenState extends State<ConfirScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title:  Text("Booking Confirmed",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 18,),
            Image.asset("assets/image/Ticket.png",width: MediaQuery.of(context).size.width-24,height: MediaQuery.of(context).size.height*114/812,),
            SizedBox(
              height: 12,
            ),
            FilmInfor(),  
            SizedBox(height:MediaQuery.of(context).size.height*16/812), 
            ButtonConfi()
          ],
        ),
      ),
    );
  }
}




