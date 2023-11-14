// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchStateImpl _$$SearchStateImplFromJson(Map<String, dynamic> json) =>
    _$SearchStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      query: json['query'] as String? ?? "",
      currentPage: json['currentPage'] as int? ?? 1,
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResult: json['incomplete_result'] as bool? ?? false,
      users: (json['items'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
    );

Map<String, dynamic> _$$SearchStateImplToJson(_$SearchStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'query': instance.query,
      'currentPage': instance.currentPage,
      'total_count': instance.totalCount,
      'incomplete_result': instance.incompleteResult,
      'items': instance.users,
    };
