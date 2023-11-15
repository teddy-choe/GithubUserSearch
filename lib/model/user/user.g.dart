// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      login: json['login'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      avatarUrl: json['avatar_url'] as String? ?? '',
      followingUrl: json['following_url'] as String? ?? '',
      followersUrl: json['followers_url'] as String? ?? '',
      reposUrl: json['repos_url'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      starredUrl: json['starred_url'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'following_url': instance.followingUrl,
      'followers_url': instance.followersUrl,
      'repos_url': instance.reposUrl,
      'score': instance.score,
      'starred_url': instance.starredUrl,
    };
