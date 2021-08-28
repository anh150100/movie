
import 'package:film/data_resources/api_services.dart';
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/cast.dart';
import 'package:film/pages/person/person_movie.dart';
import 'package:film/screen/booking_session/book_session.dart';
import 'package:flutter/material.dart';

class ActorInfor extends StatelessWidget {
  final CastModel itemCast;
  const ActorInfor({Key? key, required this.itemCast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 226.55,
      child:
      FutureBuilder(
        future: ApiServices().fetchCast(itemCast.id),
        builder: (context, snapshot) {
          if ((snapshot.hasError) || (!snapshot.hasData))
            return Center(
              child: Text("Loading..", style: TextStyle(color: Colors.white),),
            );
          List<MovieCast>? movieList = snapshot.data as List<MovieCast>?;
          return
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: movieList!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color:Color(0xff3B3B4D),
                  ), child: itemInfor(context, movieList[index])//itemInfor(context, movieList[index]),
                );
              }
          );
        }
      ),
    );
  }
}
itemInfor(BuildContext context,MovieCast itemMovie){
  return GestureDetector(
    onTap: (){
      var route = MaterialPageRoute(builder: (context) => BookSession());
      Navigator.push(context,route);
    },
    child: Container(
      width: 123.05,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(BG_IN_DETAIL_LINK + itemMovie.posterPath,
              height: 180.55, fit: BoxFit.cover,
              width: 123.05,
            ),
          ),
      //    Image.network(BG_IN_DETAIL_LINK + itemMovie.posterPath,width: 123.05,height: 180.55,),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.only(left: 11.5,right:5),
              child: Text(itemMovie.title!,style: TextStyle(fontSize: 9.2,fontWeight: FontWeight.w800,color: Colors.white),)),
        ],
      ),
    ),
    //  ),
  );
}
