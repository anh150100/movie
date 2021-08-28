import 'package:film/controller/bottom_nav_controller.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/screen/homescreen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/chair_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiProvider(
        providers: [
          // ChangeNotifierProvider(create: (context) => ColorImage()),
          ChangeNotifierProvider(create: (context) => BottomNavController()),
          Provider<List<NearModel>>(
            create: (context) =><NearModel>[],
          ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MainScreen(),),

      ),


    );

  }
}
