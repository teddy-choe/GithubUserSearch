class Repo {
  final int id;
  final String name;
  final String fullName;
  final String description;

  Repo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.description});

  Repo.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        fullName = json['full_name'],
        description = json['description'];
}
