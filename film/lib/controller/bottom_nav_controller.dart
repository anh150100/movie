import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class BottomNavController with ChangeNotifier {
  int _count = 0 ;
  List <Color> colors = [
      Colors.redAccent,
      Color(0xff6D6D80),
      Color(0xff6D6D80),
      Color(0xff6D6D80),
      Color(0xff6D6D80),
  ];
  int get count => _count;
  void increment(int index) {
    _count=index;
    for(int i=0;i< colors.length;i++){
      if(i == index){
        colors[i] = Colors.redAccent;
      }
      else{
        colors[i]=Color(0xff6D6D80);
      }
    }
    notifyListeners();
  }
}

