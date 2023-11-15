import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default("") @JsonKey(name: 'name') String name,
    @Default("") @JsonKey(name: 'full_name') String fullName,
    @Default("") @JsonKey(name: 'description') String description
}) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
