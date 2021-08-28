import 'package:film/data_resources/reponsitory.dart';
import 'package:film/pages/near/near.dart';
import 'package:rxdart/rxdart.dart';



class PopularBloc {
  final _repository = Repository();

  // Tạo Stream
  final videoSubject = PublishSubject<List<NearModel>>();

  // nhúng data từ Data Layer vào Stream
  fetchAllMovies () async {
    List<NearModel> videoList = await _repository.fetchAllMovies();
    videoSubject.sink.add(videoList);
  }

  // xuất Stream
  Stream<List<NearModel>> get allMovie => videoSubject.stream;

  // dispose Bloc
  dispose() {
    videoSubject.close();
  }
}