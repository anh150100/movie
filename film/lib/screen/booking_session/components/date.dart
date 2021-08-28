import 'package:film/model/date/date_model.dart';
import 'package:flutter/material.dart';

class ItemDate extends StatelessWidget {
  const ItemDate({
    Key? key,required this.date,
  }) : super(key: key);
  final Date date ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: 80,
          width: 61,
          decoration: BoxDecoration(
            color: Color(0xff222232),
            borderRadius: BorderRadius.all(Radius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(date.number,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Color(0xffFFFFFF)),),
              SizedBox(
                height: 5,
              ),
              Text(date.date,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Color(0xffFFFFFF)),)
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseDate extends StatefulWidget {
  @override
  _ChooseDateState createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: date.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color:Color(0xff3B3B4D),
              ),child: ItemDate(date: date[index]),
            );
          }
      ),
    );
  }
}
