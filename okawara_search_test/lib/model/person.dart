class Person {
  final int id;
  final String name;

  Person(
    this.id,
    this.name,
  );

  Person.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
