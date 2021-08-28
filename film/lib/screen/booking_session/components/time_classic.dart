import 'package:film/model/time/time_classic.dart';
import 'package:flutter/material.dart';

class ItemTime extends StatelessWidget {
  const ItemTime({
    Key? key,required this.time,
  }) : super(key: key);
  final TimeModel time;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: 32,
          width: 61,
          decoration: BoxDecoration(
            color: Color(0xff222232),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(time.time,style: TextStyle(color: Colors.white70,fontSize: 12,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeClassic extends StatefulWidget {
  @override
  _TimeClassicState createState() => _TimeClassicState();
}

class _TimeClassicState extends State<TimeClassic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: listTime.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color:Color(0xff3B3B4D),
              ),child: ItemTime(time: listTime[index]),
            );
          }
      ),
    );
  }
}