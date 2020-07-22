import 'dart:convert';

class Movie {
  final int id;
  final String title;
  final String backPoster;

  Movie(
    this.id,
    this.title,
    this.backPoster,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        backPoster = json['backdrop_path'];
}
