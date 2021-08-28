import 'package:flutter/material.dart';

class ButtonConfi extends StatelessWidget {
  const ButtonConfi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*48/812,
      margin: EdgeInsets.only(left:16),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
      child: GestureDetector(
        // color: Colors.pink,
        child: Container(
      height: 48,
      width:  (MediaQuery.of(context).size.width-39)/2,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image/wallet-og-twitter.png",width: 41,height: 24,),
          SizedBox(width:5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ADD TO",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Colors.black26),),
              Text("APPLE WALLET",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),)
            ],
          )
        ],
      )),
        onTap: (){},
      ),
    ),
    SizedBox(width:7.5),
    Container(
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
      child: Center(child: Text("CONTINUE",
        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),))),
        onTap: (){
          // var route = MaterialPageRoute(builder: (context) => ConfirScreen());
          // Navigator.push(context, route);
        },
      ),
    ),
        ],
      ),
    );
  }
}