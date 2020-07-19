import 'package:okawara_search_test/model/movie_response.dart';
import 'package:okawara_search_test/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieListByGenreBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();

  getMovieByGenre(int id) async {
    MovieResponse response = await _repository.getMovieByGenre(id);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final moviesByGenreBloc = MovieListByGenreBloc();
