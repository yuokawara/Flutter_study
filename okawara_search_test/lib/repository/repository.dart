import 'package:dio/dio.dart';
import 'package:okawara_search_test/model/movie_response.dart';
import 'package:okawara_search_test/model/person_response.dart';
//import 'package:okawara_search_test/model/video_response.dart';
import 'package:okawara_search_test/model/genre_response.dart';

class MovieRepository {
  final String apiKey = '8a1227b5735a7322c4a43a461953d4ff';
  static String mainUrl = 'https://api.themoviedb.org/3';
  final Dio _dio = Dio();
  var getPopularUrl = '$mainUrl/movie/top_rated';
  var getMoviesUrl = '$mainUrl/discover/movie';
  var getPlayingUrl = '$mainUrl/movie/now_playing';
  var getGenresUrl = '$mainUrl/genre/movie/list';
  var getPersonsUrl = '$mainUrl/trending/person/week';
  var movieUrl = "$mainUrl/movie";

  // getMovie
  Future<MovieResponse> getMovies() async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response =
          await _dio.get(getPopularUrl, queryParameters: params);
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
          await _dio.get(getPlayingUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }

  //getGenres
  Future<GenreResponse> getGenres() async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response = await _dio.get(getGenresUrl, queryParameters: params);
      return GenreResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return GenreResponse.withError('$error');
    }
  }

  //getPerson
  Future<PersonResponse> getPersons() async {
    var params = {
      'api_key': apiKey,
    };
    try {
      Response response =
          await _dio.get(getPersonsUrl, queryParameters: params);
      return PersonResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return PersonResponse.withError('$error');
    }
  }

  // get MoviebyGenre
  Future<MovieResponse> getMovieByGenre(int, id) async {
    var params = {
      'api_key': apiKey,
      'language': 'en-US',
      'page:': 1,
      'with_genres': id
    };
    try {
      Response response = await _dio.get(getMoviesUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return MovieResponse.withError('$error');
    }
  }
}
