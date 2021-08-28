import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorImage with ChangeNotifier {
  late Color _color = Color(0xff9D9DAF);
  int count = 0;
  Color get color => _color;
  void getColor () {
    count ++;
    if (count % 2 == 0) {
      _color = Color(0xff9D9DAF);
    }
    else {
      _color = Color(0xffFF3364);
    }
    notifyListeners();
    }
  }