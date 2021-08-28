class ApiUrls {
  final movieCastUrl = (movieId)
  => Uri.https('api.themoviedb.org', '3/movie/${movieId}/credits', {'api_key': '9bb89316d8693b06d7a84980b29c011f','language': 'vi- VN', });
  final nearApiUrl = ()
  => Uri.https('api.themoviedb.org', '/3/movie/popular', {'api_key': '9bb89316d8693b06d7a84980b29c011f','language': 'vi-VN', });
  final castInfo = (castId)
  => Uri.https('api.themoviedb.org', '3/person/${castId}', {'api_key': '9bb89316d8693b06d7a84980b29c011f','language': 'vi- VN', });
  final movieCast = (castId)
  => Uri.https('api.themoviedb.org', '3/person/${castId}/movie_credits', {'api_key': '9bb89316d8693b06d7a84980b29c011f','language': 'vi- VN', });
}