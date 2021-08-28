import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String text;
  const SearchWidget({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
                      decoration: InputDecoration(
                          hintText: text,
                          hintStyle: TextStyle(fontFamily: 'Gilroy',
                              fontSize: 14,
                              fontWeight: FontWeight.w800,color: Colors.white)
                      ),


        );
  }
}