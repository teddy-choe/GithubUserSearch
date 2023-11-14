import 'package:search_github/model/User.dart';

class Repo {
  final int id;
  final String name;
  final String fullName;
  final User owner;
  final String description;

  Repo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.owner,
      required this.description});

  Repo.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        fullName = json['full_name'],
        owner = json['owner'],
        description = json['description'];
}
