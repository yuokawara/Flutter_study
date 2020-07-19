class Movie {
  final int id;
  final String title;

  Movie(
    this.id,
    this.title,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];
}
