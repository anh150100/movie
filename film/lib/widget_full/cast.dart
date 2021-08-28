
import 'package:film/data_resources/api_services.dart';
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/cast.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/pages/person/person_cast.dart';
import 'package:film/screen/homescreen/infor_actor.dart';
import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  final NearModel itemNear;

  const Cast({Key? key, required this.itemNear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(right: 10),
      child: FutureBuilder(
          future: ApiServices().fetchMovieCast(itemNear.id),
          builder: (context, snapshot) {
            if ((snapshot.hasError) || (!snapshot.hasData))
              return Center(
                child: Text("Loading..",style: TextStyle(color: Colors.white),),
              );
            List<CastModel>? castList = snapshot.data as List<CastModel>?;
            return ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: castList!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _itemCast(context,castList[index],itemNear);
              },
            );
          }
      ),
    );
  }
}

  _itemCast(BuildContext context,CastModel itemCast,NearModel itemNear) {
    return GestureDetector(
      onTap: () {
        var route = MaterialPageRoute(
            builder: (context) => CastInfo(itemCast: itemCast,itemNear:itemNear ,),//InforActor(itemCast: itemCast,),
        );
        Navigator.push(context, route);
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Expanded(
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(BG_IN_DETAIL_LINK  + itemCast.profile_path!))),
                )),
            SizedBox(
              height: 4,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 100),
              child: Text(
                itemCast.name!,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
