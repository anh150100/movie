import 'package:film/controller/chair_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Armchair2 extends StatelessWidget {
  const Armchair2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorImage(), builder: (context,child)
    =>Container(
        margin: EdgeInsets.only(right: 16,bottom: 16),
        child: GestureDetector(
          onTap: (){
            // setState(() {
            //   color = Colors.pink;
            // });
            context.read<ColorImage>().getColor();
          },
          child: Image.asset("assets/image/chair2.png",width: 46,height: 14,
            color: context.watch<ColorImage>().color,
          ),
        )
    ),
    );
  }
}