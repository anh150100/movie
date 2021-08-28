import 'package:flutter/material.dart';

import 'components/ticket_film.dart';

class Tickets extends StatelessWidget {
  const Tickets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:Column(
        children: [
           SizedBox(
            height: MediaQuery.of(context).size.height*52/812,
          ),
          Center(
            child:Text("Tickets",style: TextStyle(fontFamily: "Gilroy",fontSize: 22,fontWeight: FontWeight.w800,color: Colors.white),textAlign:TextAlign.center)
          ),
          SizedBox(
            height:20
          ),
          TicketFilm1(),
          TicketFilm2(),
        ],
      )
     

    );
  }
}

