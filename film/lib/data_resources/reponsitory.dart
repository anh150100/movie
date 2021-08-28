

import 'package:film/data_resources/api_services.dart';

class Repository {
  final ApiServices apiServices = ApiServices();
  Future<dynamic> fetchAllMovies() => apiServices.fetchAllNear();
}