import 'package:film/screen/booking_confirmed/confi_screen.dart';
import 'package:flutter/material.dart';

class ButtonPayMoney extends StatelessWidget {
  const ButtonPayMoney({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        // color: Colors.pink,
        child: Container(
            height: 48,
            width:    (MediaQuery.of(context).size.width-39)/2,
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
            child: Center(child: Text("Pay 24.98€",
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
        onTap: (){
          var route = MaterialPageRoute(builder: (context) => ConfirScreen());
          Navigator.push(context, route);
        },
      ),
    );
  }
}