import 'package:film/blocs/popular_bloc.dart';
import 'package:film/pages/near/near.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/column1.dart';

class FavouriteMovies extends StatefulWidget {
  const FavouriteMovies({ Key? key}) : super(key: key);

  @override
  _FavouriteMoviesState createState() => _FavouriteMoviesState();
}

class _FavouriteMoviesState extends State<FavouriteMovies> {
  final popularBloc = PopularBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    popularBloc.fetchAllMovies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    popularBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoList = Provider.of<List<NearModel>>(context);
    return Scaffold (
      backgroundColor: Color(0xff191926),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff191926),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Color(0xff6D6D80),),
            onPressed:(){
             // Navigator.pop(context);
            }
            ),
            title: Text("Favourite Movies",style: TextStyle(fontFamily: "Gilroy",fontSize: 22,fontWeight: FontWeight.w800,color: Colors.white)),
      ),
      body: Container(
        color: Color(0xff191926),
          child: StreamBuilder(
           stream: popularBloc.allMovie,
           builder: (context, snapshot) {
             if ((snapshot.hasError) || (!snapshot.hasData))
               return Center(
                 child: CircularProgressIndicator(),
               );
             List<NearModel>? videoList = snapshot.data as List<NearModel>?;
             return ListView.builder(
                 itemCount: videoList!.length,
                 itemBuilder: (context, index) {
                   return favouriteWidget(context,videoList[index]);
                 }
             );
           }),
             ),
    );
  }
}

  favouriteWidget(BuildContext context,NearModel itemNear) {
    return Container(
              height:MediaQuery.of(context).size.height*260/812,
              margin: EdgeInsets.only(left:12,top:20,right:12),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.black12,
              ),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Column1(itemNear: itemNear,)),
            SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Tenet",
                   style: TextStyle(fontFamily: "Gilroy",
                  fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white)
                  )],),
                  SizedBox(height:10,),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*260/812-70,
                      child: ListView(
                      shrinkWrap: true,
                      children: [
                        Text(itemNear.overview!,
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,fontFamily: "Gilroy",
                              color: Colors.white),textAlign: TextAlign.justify,),
                      ],
                    ),
                  ),),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(bottom:10,),
                    child: GestureDetector(
                    // color: Colors.pink,
                      child: Container(
                        height: 30,
                        width: (MediaQuery.of(context).size.width*229/395-12)*2/3,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff8036E7),
                            Color(0xffFF3365),
                            //    Color(0xffFF3365),
                          ],
                        )
                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("BOOK YOUR TICKET",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),),
                      ],
                    )),
              onTap: () {
                  // var route = MaterialPageRoute(builder: (context) => SelectSeats());
                  // Navigator.push(context, route);
              }
        ),
      ),
                ),
                ],),
            )
        ],)
    );
  }

