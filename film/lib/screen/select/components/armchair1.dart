import 'package:film/controller/chair_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Armchair extends StatelessWidget {
  const Armchair({
    Key? key,required this.width,
  }) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorImage(), builder: (context,child)=>Container(
        margin: EdgeInsets.only(right: 10,bottom: 10),
        child: GestureDetector(
          onTap: (){
            // setState(() {
            //   color = Colors.pink;
            // });
            context.read<ColorImage>().getColor();
          },
          child: Image.asset("assets/image/armchair.png",width: 16,height: 14,
            color: context.watch<ColorImage>().color,
          ),
        )
    ),
    );
  }
}