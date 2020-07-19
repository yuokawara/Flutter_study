import 'package:dio/dio.dart';
import 'package:okawara_search_test/model/movie_response.dart';

class MovieRepository {
  final String apiKey = '<<themoviedb.org - ApiKey here>>';
  static String mainUrl = 'https://themoviedb.org/3';
  final Dio _dio = Dio();
  var getPopularurl = '$mainUrl/movie/top_rated';
  var getMoviesurl = '$mainUrl/discover/movie';
  var getPlayingurl = '$mainUrl/movie/now_playing';
  var getGenresrurl = '$mainUrl/genre/movie/list';
  var getPersonsurl = '$mainUrl/trending/person/week';

  // getMovie
  Future<MovieResponse> getMovies() async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response =
          await _dio.get(getPopularurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }

  // getPlaying
  Future<MovieResponse> getPlayingMovies() async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response =
          await _dio.get(getPlayingurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }

  //getGenres
  Future<MovieResponse> getGenres() async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response =
          await _dio.get(getGenresrurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }

  //getGenres
  Future<MovieResponse> getPersons() async {
    var params = {
      'api_key': apiKey,
    };
    try {
      Response response =
          await _dio.get(getPersonsurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }

  Future<MovieResponse> getMovieByGenre(int, id) async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
      'with_genres': id
    };
    try {
      Response response = await _dio.get(getMoviesurl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }
}
