
import 'package:film/widget_full/actor.dart';
import 'package:film/widget_full/cast.dart';
import 'package:flutter/material.dart';
bodyActorWidget(){
  return Container(
    margin: EdgeInsets.only(left: 16),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 8,
                child: Text("Filmography",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),)),
            Expanded(
                flex: 2,
                child: Text("See All",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xff6D6D80)),)),
          ],
        ),
      ],
    ),
  );
  }