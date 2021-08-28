import 'package:flutter/material.dart';

import 'icon_date.dart';
import 'icon_time.dart';
import 'infor.dart';

class Head extends StatelessWidget {
  const Head({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              IconDate(),
              IconTime(),
            ],
          ),
          SizedBox(width: 21,),
          Infor(),
        ],
      ),
    );
  }
}
