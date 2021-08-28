
import 'package:film/blocs/popular_bloc.dart';
import 'package:film/controller/like_controller.dart';
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/screen/homescreen/movie_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NearYouView extends StatefulWidget {
  @override
  _NearYouViewState createState() => _NearYouViewState();
}

class _NearYouViewState extends State<NearYouView> {
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
    return Scaffold(
      body: Container(
        color: Color(0xff191926),
        child: StreamBuilder(
            stream: popularBloc.allMovie,
            builder: (context, snapshot)
            {
              if((snapshot.hasError)||(!snapshot.hasData))
                return Center(
                  child: CircularProgressIndicator(),
                );
              List<NearModel>? videoList = snapshot.data as List<NearModel>?;
          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.62,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 30),
            itemCount: videoList!.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color:Color(0xff3B3B4D),
                ),
                child: _itemPopular(context, videoList[index]),);
      },
    );// );
            },
      ),
      ),
        );
  }
}
Widget _itemPopular(BuildContext context, NearModel itemNear) {

    return GestureDetector(
    onTap: () {
      var route = MaterialPageRoute(
              builder: (context) => MovieDetails(itemNear: itemNear));
          Navigator.push(context, route);
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(POSTER_IN_DETAIL_LINK +
                              itemNear.poster_path!))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black],
                          stops: [0.5, 1])),
                ),
                Positioned(
                    bottom: 12,
                    left:5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemNear.genre_ids.join(", "),
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 8,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                            Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                            Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                            Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                            Image.asset("assets/image/Star Icon.png",width: 8,height: 8,),
                            Text("125 REVIEW",style: TextStyle(color: Color(0xff6D6D80),fontSize: 8,fontWeight: FontWeight.w800,fontFamily: "Gilroy"),),
                          ],
                        ) ,
                      ],

                    )),
                Positioned(
                    top:12,
                    left:5,
                    child: Row(
                      children: [
                      Image.asset("assets/image/PG.png",width: 24,height: 24,),
                      SizedBox(width: (MediaQuery.of(context).size.width-24*2-120)/2,),
                      ChangeNotifierProvider(
                        create: (context) => ColorLike(), builder: (context,child)
                        => Container(
                          child: GestureDetector(
                            onTap: (){
                            context.read<ColorLike>().getColor();
                            },
                            child:Image.asset("assets/image/Like.png",width: 15,height: 15,color:  context.watch<ColorLike>().color,),),),),
                      ],
                    ))
              ],
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0,top: 8.0),
              child: Text(
                itemNear.original_title!,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ))
      ],
    ),
  );
}




