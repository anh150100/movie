
import 'package:film/controller/bottom_nav_controller.dart';
import 'package:film/favourite_movies/favourite_screen.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/screen/cinema/cinema_screen.dart';
import 'package:film/tickets/tickets_screen.dart';
import 'package:film/widget_full/near_you_view.dart';
import 'package:film/widget_full/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin{
  int currenindex = 0;
  PageController _pageController = PageController();
  late TabController _controller;
  @override
  void initState() {
    super.initState();
   _controller = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
   // var countModel = Provider.of<Counter>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex:context.watch<BottomNavController>().count,
        onTap: (index) {
            context.read<BottomNavController>().increment(index);

         _pageController.jumpToPage(index);
        // context.read<BottomNavigationController>().onTap(index);
        },
        unselectedItemColor: Color(0xff6D6D80).withOpacity(0.54),
        selectedItemColor:Colors.redAccent,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/image/Combined Shape.png",color: context.watch<BottomNavController>().colors[0],width:16,height:15),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/image/2.png",width:16,height:15,color: context.watch<BottomNavController>().colors[1]),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/image/3.png",width:16,height:15,color: context.watch<BottomNavController>().colors[2]),
            label: "Cinames",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/image/Path.png",width:16,height:15,color: context.watch<BottomNavController>().colors[3]),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/image/profile.png",width:16,height:15,color: context.watch<BottomNavController>().colors[4]),
            label: "Profile",
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
        Container(
          color: Color(0xff191926),
           child: Column(
            children: [
                SizedBox(
                  height: AppBar().preferredSize.height,//lấy chiều cao appBar
                ),
              Row(
                children:[
                  Expanded(
                    flex: 1,
                      child: Image.asset("assets/image/4.png",width: 16,height: 16,)
                  ),
                  Expanded(
                      flex: 5,
                      child: SearchWidget(text: "Search"),
                  ),
                  Expanded(
                      flex: 1,
                      child: Icon(Icons.search_rounded,color: Color(0xff6D6D80),),
                  ),
           ]
              //  SearchWidget(text: "Search"),
              ),

              tabBar(),
              _tabBarView(),
            ],


          ),
       ),
          Tickets(),
          CinemaScreen(),
          FavouriteMovies(),
          Container(
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
  tabBar(){
    return Padding(
      padding: const EdgeInsets.only(top:10,left: 16),
      child: TabBar(
        controller: _controller,
        labelStyle: TextStyle(fontFamily: "Gilroy"),
        tabs: [
          Text("Near You",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,),textAlign:TextAlign.center),
          Text("Coming Soon",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800),textAlign:TextAlign.center),
          Text("Premieres",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800),textAlign:TextAlign.center),
        ],
      indicatorColor: Colors.purpleAccent,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      labelPadding: EdgeInsets.symmetric(horizontal: 13,vertical: 2),
        labelColor: Color(0xffffffff),
        unselectedLabelColor: Colors.white.withOpacity(0.5),
        isScrollable: true,
      ),
    );
  }
  _tabBarView(){
    return Expanded(
        child: TabBarView(
          controller: _controller,
          children: [
              NearYouView(),
              Container(
                color: Colors.orangeAccent,
              ),
            Container(
              color: Colors.blueAccent,
            ),
          ],
        ),
    );
  }
}





