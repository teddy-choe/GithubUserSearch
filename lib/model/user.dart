import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {@Default('') @JsonKey(name: 'login') String login,
      @Default(0) @JsonKey(name: 'id') int id,
      @Default('') @JsonKey(name: 'avatar_url') String avatarUrl,
      @Default('') @JsonKey(name: 'html_url') String htmlUrl,
      @Default('') @JsonKey(name: 'repos_url') String reposUrl,
      @Default(0) @JsonKey(name: 'score') double score,
      @Default('') @JsonKey(name: 'starred_url') String starredUrl}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
