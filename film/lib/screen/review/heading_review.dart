import 'package:film/data_resources/string_url.dart';
import 'package:film/pages/near/near.dart';
import 'package:flutter/material.dart';

class HeadingReview extends StatelessWidget {
  final NearModel itemNear;
  const HeadingReview({
    Key? key, required this.itemNear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text("YOUR REVIEW",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xffFFFFFF)),),
            SizedBox(height: 5,),
            Row(
                children: [
                  Text(itemNear.release_date!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xff6D6D80)),),
                  SizedBox(
                    width: 14,
                  ),
                  Text( "${itemNear.vote_count} HELPFUL VOTES",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,fontFamily: " Gilroy",color: Color(0xff6D6D80)),)
                ]
            ),
          ],
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 16,top: 16),
                  // child:  Container(
                  //     height: 150,
                  //     decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(24)),),
                  //     child:Image.network(POSTER_IN_DETAIL_LINK + itemNear.poster_path!,width: 100),
                    child:  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(POSTER_IN_DETAIL_LINK + itemNear.poster_path!,
                          height: 120.0, fit: BoxFit.cover,
                          width: 80.0,
                        ),
                      )

                  ),
           //   )
            ],
          ),
        ),
      ],
    );
  }
}