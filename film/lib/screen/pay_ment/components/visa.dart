import 'package:flutter/material.dart';

class Visa extends StatelessWidget {
  const Visa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor:  Color(0xffFF3365)),
      child:TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Color(0xffFF3365),
        decoration: InputDecoration(
            fillColor: Color(0xff191926),
            filled: true,
            border: OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.pinkAccent ),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            suffixIcon: InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    color: Color(0xff191926),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("VISA",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}