
import 'package:flutter/material.dart';

import 'components/button_pay.dart';
import 'components/button_pay_apple.dart';
import 'components/button_pay_money.dart';
import 'components/visa.dart';

class PayMent extends StatefulWidget {
  @override
  _PayMentState createState() => _PayMentState();
}

class _PayMentState extends State<PayMent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191926),
      appBar: AppBar(
        backgroundColor: Color(0xff191926),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Payment",
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),
        ),
        ),
      body: Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: Column(
          children: [
            Center(child: Image.asset("assets/image/Visa.png",width: MediaQuery.of(context).size.width,height: 192,)),
            SizedBox(
              height: 32,
            ),
          Visa(),
          SizedBox(
            height: 16,
          ),
          ButtonPay(
            text:"Enter cardholder name" ,
            width: MediaQuery.of(context).size.width,
          ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ButtonPay(
                    text: "Enter valid thru",
                    width: (MediaQuery.of(context).size.width-41)/2,
                ),
                SizedBox(width: 9,),
                ButtonPay(
                  text: "Enter CVV",
                  width:(MediaQuery.of(context).size.width-41)/2,
                ),
      ],
    ),
                Expanded(
                  flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                                ButtonPayApple(),
                                SizedBox(width: 7,),
                                ButtonPayMoney(),
                        ],
                ),
                    )
                ),
              ],
            )
        ),
      );
  }
}


