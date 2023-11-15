// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoStateImpl _$$RepoStateImplFromJson(Map<String, dynamic> json) =>
    _$RepoStateImpl(
      repo: json['repo'] == null
          ? null
          : Repo.fromJson(json['repo'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? true,
      isNetworkError: json['isNetworkError'] as bool? ?? false,
    );

Map<String, dynamic> _$$RepoStateImplToJson(_$RepoStateImpl instance) =>
    <String, dynamic>{
      'repo': instance.repo,
      'isLoading': instance.isLoading,
      'isNetworkError': instance.isNetworkError,
    };
