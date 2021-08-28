import 'package:film/screen/booking_confirmed/components/film_infor.dart';
import 'package:flutter/material.dart';

class TicketsDetails extends StatefulWidget {
  const TicketsDetails({ Key? key }) : super(key: key);

  @override
  _TicketsDetailsState createState() => _TicketsDetailsState();
}

class _TicketsDetailsState extends State<TicketsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191926),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff191926),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Color(0xff6D6D80),),
          onPressed: (){
            Navigator.pop(context);
          },
          ),
          title: Text("Ticket Details",style: TextStyle(fontFamily: "Gilroy",fontSize: 22,fontWeight: FontWeight.w800,color: Colors.white)),
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
          ],
    ),
       ),
    );
  }
}