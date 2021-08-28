import 'package:flutter/material.dart';

class CastInfoModel{
  bool? adult;
  List<dynamic>? alsoKnownAs;
  String? biography;
  String? birthday;
  dynamic? deathday;
  int? gender;
  dynamic? homepage;
  int? id;
  String? imdbId;
  String? knownForDepartment;
  String? name;
  String? placeOfBirth;
  double? popularity;
  String? profilePath;

  CastInfoModel({
    this.adult,
    this.alsoKnownAs,
    this.biography,
    this.birthday,
    this.deathday,
    this.gender,
    this.homepage,
    this.id,
    this.imdbId,
    this.knownForDepartment,
    this.name, this.placeOfBirth,
    this.popularity,
    this.profilePath,
});

  toJson(){
    return {
      "adult": this.adult,
      "also_known_as": this.alsoKnownAs,
      "biography": this.biography,
      "birthday": this.birthday,
      "deathday": this.deathday,
      "gender": this.gender,
      "homepage": this.homepage,
      "id": this.id,
      "imdb_id": this.imdbId,
      "known_for_department": this.knownForDepartment,
      "name": this.name,
      "place_of_birth": this.placeOfBirth,
      "popularity": this.popularity,
      "profile_path": this.profilePath,
    };
}
    factory CastInfoModel.fromJson (json){
        return CastInfoModel(
          adult: json['adult'],
          alsoKnownAs: json["also_known_as"] ?? [],//,required this.also_known_as,
        biography: json['biography'],//required this.biography,
          birthday: json['birthday'],//required this.birthday,
          deathday: json['deathday'],//required this.deathday,
          gender: json['gender'],//required this.gender,
          homepage: json['homepage'],//required this.homepage,
          id: json['id'],//required this.id,
          imdbId: json['imdb_id'],//required this.imdb_id,
          knownForDepartment: json['known_for_department'],//required this.known_for_department,
          name: json['name'],//required this.name,
          placeOfBirth: json['place_of_birth'],//required this.place_of_birth,
          popularity: json['popularity'],//required this.popularity,
          profilePath: json['profile_path'],//required this.profile_path,
      );
    }
}