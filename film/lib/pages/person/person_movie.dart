class MovieCast {
  bool? adult;
  dynamic? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  dynamic? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;
  double? popularity;
  String? character;
  String? creditId;
  int? order;

  MovieCast({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.popularity,
    this.character,
    this.creditId,
    this.order});
  toJson(){
    return {
     "adult" :this.adult,
      "backdropPath" :this.backdropPath,
      "genreIds" :this.genreIds,
      "id" :this.id,
      "originalLanguage" :this.originalLanguage,
      "originalTitle" :this.originalTitle,
      "overview" :this.overview,
      "posterPath" :this.posterPath,
      "releaseDate" :this.releaseDate,
      "title" :this.title,
      "video" :this.video,
      "voteAverage" :this.voteAverage,
      "voteCount" :this.voteCount,
      "popularity" :this.popularity,
      "character" :this.character,
      "creditId" :this.creditId,
      "order" :this.order,
    };
  }
  factory MovieCast.fromJson(Map<String, dynamic> json) {
    return MovieCast (
        adult : json['adult'],
        backdropPath : json['backdrop_path'],
        genreIds : json['genre_ids']==null ? null : List<int>.from(json['genre_ids']),
        id : json['id'],
        originalLanguage : json['original_language'],
        originalTitle : json['original_title'],
        overview : json['overview'],
        posterPath : json['poster_path'],
        releaseDate : json['release_date'],
        title : json['title'],
        video : json['video'],
        voteAverage : json['vote_average'],
        voteCount : json['vote_count'],
        popularity : json['popularity'],
        character : json['character'],
        creditId : json['credit_id'],
        order : json['order'],
    );
  }
}