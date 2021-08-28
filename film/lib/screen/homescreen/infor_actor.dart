import 'dart:convert';

import 'package:film/data_resources/api_services.dart';
import 'package:film/data_resources/api_url.dart';
import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/cast.dart';
import 'package:film/pages/near/near.dart';
import 'package:film/pages/person/person_cast.dart';
import 'package:film/widget_full/actor.dart';
import 'package:film/widget_full/body_actor.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
Future<CastInfoModel> fetchCastInfoModel(castId) async {
  final response = await http.get(ApiUrls().castInfo(castId));

  if (response.statusCode == 200) {
    return CastInfoModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class CastInfo extends StatefulWidget {
  final CastModel itemCast;
  final NearModel itemNear;

  const CastInfo({Key? key,required this.itemCast, required this.itemNear}) : super(key: key);

  @override
  _CastInfoState createState() => _CastInfoState(this.itemCast,this.itemNear);
}

class _CastInfoState extends State<CastInfo> {
  late Future<CastInfoModel> futureCastInfo;
  final CastModel itemCast;
  final NearModel itemNear;
  _CastInfoState(this.itemCast, this.itemNear);
  @override
  void initState() {
    super.initState();
    futureCastInfo = fetchCastInfoModel(itemCast.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff191926),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:Row(
            children: [
            Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.arrow_back_ios,color: Color(0xff6D6D80),),
                ),
                ],
              ),//
            onPressed: ()
           {
              Navigator.pop(context);
              }),
            title: Row(
              children: [
              Text("Back",style: TextStyle(color:Color(0xff6D6D80),fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy" ),),
               ],
               ),
                ),
             body: Container(
               child: ListView(
                 padding: EdgeInsets.zero,
                 shrinkWrap: true,
                 physics:  ClampingScrollPhysics(),
                 children: [
                 Column(
                 children: [
                  FutureBuilder<CastInfoModel>(
                      future: futureCastInfo,
                      builder: (context, snapshot) {
                   if (snapshot.hasData) {
                     return Container(
                       child: Column(
                         children: [
                         Stack(
                          children: [
                          Image.network(POSTER_IN_DETAIL_LINK + itemNear.backdrop_path!,fit: BoxFit.cover, height: MediaQuery.of(context).size.height/2 ,),
                          Container(
                           // margin: EdgeInsets.only(left: 20,top:0),
                            height: MediaQuery.of(context).size.height/2,
                            decoration: BoxDecoration(
                             //  borderRadius: BorderRadius.all(Radius.circular(24)),
                               gradient: LinearGradient(
                                 begin: Alignment.topCenter,
                                 end: Alignment.bottomCenter,
                                 colors: [
                                   Colors.black54,
                                   Color(0xff191926),
                                   //    Color(0xffFF3365),
                                 ],
                               )
                           ),
                              child: Container(
                                margin: EdgeInsets.only(left: 20,top:0),
                                child: Column(
                           //   mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     SizedBox(
                                 height:MediaQuery.of(context).size.height/5 ,
                                   ),
                                   Text(itemCast.name!,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,color: Colors.white),),
                                  SizedBox(
                                 height: 20,
                             ),
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.network(BG_IN_DETAIL_LINK  + itemCast.profile_path!,
                                          height: 80.0, fit: BoxFit.cover,
                                          width: 80.0,
                                        ),
                                      ),
                                 //  Image.network(BG_IN_DETAIL_LINK  + itemCast.profile_path!,width: 80,height: 80,),
                                   Container(
                                     margin: EdgeInsets.only(left: 16),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(snapshot.data!.birthday!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: "Gilroy"),),
                                         SizedBox(
                                           height: 5,
                                         ),
                                         Text(snapshot.data!.placeOfBirth!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: "Gilroy")),
                                         SizedBox(
                                           height: 5,
                                         ),
                                         Text(snapshot.data!.knownForDepartment!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Color(0xffFF3365),fontFamily: "Gilroy")),
                                         SizedBox(
                                           height: 5,
                                         ),
                                       ],
                                     ),
                                   ),
                                 ],
                             )
                           ],
                         ),
                              ),
                       ),
                       ],
                     ),
                           SizedBox(
                             height:9,
                           ),
                           bodyActorWidget(),
                           SizedBox(
                             height:9,
                           ),
                           ActorInfor(itemCast: itemCast,),
                           SizedBox(
                             height:9,
                           ),
                           Container(
                             margin: EdgeInsets.only(left: 16),
                             child: Column(
                               // mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Biography",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: "Gilroy",color: Colors.white),),
                                 SizedBox(
                                   height:9,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:15.0),
                                   child: Text(snapshot.data!.biography!,
                                     style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14,fontFamily: "Gilroy",color: Colors.white),textAlign: TextAlign.justify,),
                                 ),
                               ],
                             ),
                           )
                       ],),
                     );
                   } else if (snapshot.hasError) {
                     return Text('${snapshot.error}');
                   }

                   // By default, show a loading spinner.
                   return const CircularProgressIndicator();
                 },
               ),
                 ],
               ),
                 ])));
  }
}