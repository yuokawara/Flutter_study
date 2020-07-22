import 'package:okawara_search_test/model/genre_response.dart';
import 'package:okawara_search_test/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class GenresListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<GenreResponse> _subject =
      BehaviorSubject<GenreResponse>();

  getGenres() async {
    GenreResponse response = (await _repository.getGenres()) as GenreResponse;
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<GenreResponse> get subject => _subject;
}

final genresBloc = GenresListBloc();
