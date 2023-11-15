// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailStateImpl _$$DetailStateImplFromJson(Map<String, dynamic> json) =>
    _$DetailStateImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      followings: json['followings'] as int? ?? 0,
      followers: json['followers'] as int? ?? 0,
      repos: (json['repos'] as List<dynamic>?)
              ?.map((e) => Repo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Repo>[],
      isLoading: json['isLoading'] as bool? ?? true,
      isNetworkError: json['isNetworkError'] as bool? ?? false,
    );

Map<String, dynamic> _$$DetailStateImplToJson(_$DetailStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followings': instance.followings,
      'followers': instance.followers,
      'repos': instance.repos,
      'isLoading': instance.isLoading,
      'isNetworkError': instance.isNetworkError,
    };
