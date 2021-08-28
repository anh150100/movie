import 'package:flutter/material.dart';

import 'components/cinema_item.dart';

class CinemaScreen extends StatefulWidget {
  
  const CinemaScreen({ Key? key }) : super(key: key);

  @override
  _CinemaScreenState createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen>  with TickerProviderStateMixin{
    late TabController _controller1;

  @override
  void initState() {
    super.initState();
   _controller1 = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191926),
      appBar: AppBar(
         backgroundColor: Color(0xff191926),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset("assets/image/Combined Shape2.png",width:16,height:16),
          onPressed: (){},
          ),
          title: Row(
            children: [
              Expanded(
                flex: 5,
                child:Center(
                  child:Text("Cinema",style: TextStyle(color: Colors.white),)
                )
                ),
              Expanded(
                flex: 1,
                child:Icon(Icons.search_rounded)
                 ),
              
            ],
          )//Text("Cinema",style: TextStyle(color: Colors.white),)
      ),
      body: Container(
        color: Color(0xff191926),
        child: Column(
          children:[
           tabBar(),
           _tabBarView(),
             
          ]
        ),
      ),
    );
  }


tabBar(){
    return Padding(
      padding: const EdgeInsets.only(top:10,left: 16),
      child: TabBar(
        controller: _controller1,
        labelStyle: TextStyle(fontFamily: "Gilroy"),
        tabs: [
          Text("Near You",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800,),textAlign:TextAlign.center),
          Text("Favourite Cinemas",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800),textAlign:TextAlign.center),
        //  Text("Premieres",style: TextStyle(fontFamily: "Gilroy",fontSize: 14,fontWeight: FontWeight.w800),textAlign:TextAlign.center),
        ],
      indicatorColor: Colors.purpleAccent,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      labelPadding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
        labelColor: Color(0xffffffff),
        unselectedLabelColor: Colors.white.withOpacity(0.5),
        isScrollable: true,
      ),
    );
  }
  _tabBarView(){
    return Expanded(
        child: TabBarView(
          controller: _controller1,
          children: [
              Container(
              //  margin: EdgeInsets.all(12),
                color: Color(0xff191926),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                        CinemaItem(
                      image: "assets/image/Pic.png",
                      filmName: "Atlantic Cinema",
                      add: "Chmielna 33, 00-021",
                      km: "0.1 KM", 

                      ),
                      
                 
                  ],
                ),
              ),
            Container(
              color: Colors.blueAccent,
            ),
          ],
        ),
    );
  }
}


