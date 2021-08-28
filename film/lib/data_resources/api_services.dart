import 'dart:convert' show json;
import 'package:film/pages/near/cast.dart';
import 'package:film/pages/person/person_movie.dart';
import 'package:film/resources/string.dart';
import 'package:http/http.dart' as http;
import 'package:film/pages/near/near.dart';
import 'package:film/pages/person/person_cast.dart';
import 'api_url.dart';

class ApiServices {

  fetchAllNear() async{

    List<NearModel> nearList = [];
    var response = await http.get(ApiUrls().nearApiUrl());
    if (response.statusCode == 200)
    {
      var body = json.decode(response.body);
      List listJson = body['results'];
      for(int i = 0; i < listJson.length ; i++ )
      {
        NearModel movieModel = NearModel.fromJson(listJson[i]);
        nearList.add(movieModel);
      }

    }
    else throw Exception(errorFromApi);

    return nearList;
  }


  fetchMovieCast(movieId) async {

    List<CastModel> nearCastList = [];
    var fullVideoUrl = ApiUrls().movieCastUrl(movieId);

    var response = await http.get(fullVideoUrl);


    if (response.statusCode == 200)
    {
      var body = json.decode(response.body);
      List listJson = body['cast'];
      for(int i = 0; i < listJson.length ; i++ )
      {
        if (listJson[i]['profile_path'] != null) {
          CastModel castModel = CastModel.fromJson(listJson[i]);
          nearCastList.add(castModel);
        }


      }

    }
    else throw Exception(errorFromApi);

    return nearCastList;
   }

  fetchCast(castId) async {

    List<MovieCast> castList = [];
    var fullVideoUrl = ApiUrls().movieCast(castId);

    var response = await http.get(fullVideoUrl);


    if (response.statusCode == 200)
    {
      var body = json.decode(response.body);
      List listJson = body['cast'];
      for(int i = 0; i < listJson.length ; i++ )
      {
        if (listJson[i]['poster_path'] != null) {
          MovieCast movieCastModel = MovieCast.fromJson(listJson[i]);
          castList.add(movieCastModel);
        }


      }

    }
    else throw Exception(errorFromApi);

    return castList;
  }

}