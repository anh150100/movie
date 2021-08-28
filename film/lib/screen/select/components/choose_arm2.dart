import 'package:flutter/material.dart';

import 'armchair2.dart';

class ChooseArm2 extends StatelessWidget {
  const ChooseArm2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 46*4 - 22-16*3)/2-30),
      child: Center(
        child: Row(
          children: [
            Armchair2(),
            Armchair2(),
            SizedBox(width: 22,),
            Armchair2(),
            Armchair2(),
          ],
        ),
      ),
    );
  }
}
