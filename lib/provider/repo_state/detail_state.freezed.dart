// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailState _$DetailStateFromJson(Map<String, dynamic> json) {
  return _DetailState.fromJson(json);
}

/// @nodoc
mixin _$DetailState {
  User get user => throw _privateConstructorUsedError;
  int get followings => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  List<Repo> get repos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isNetworkError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {User user,
      int followings,
      int followers,
      List<Repo> repos,
      bool isLoading,
      bool isNetworkError});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followings = null,
    Object? followers = null,
    Object? repos = null,
    Object? isLoading = null,
    Object? isNetworkError = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      followings: null == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      repos: null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkError: null == isNetworkError
          ? _value.isNetworkError
          : isNetworkError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      int followings,
      int followers,
      List<Repo> repos,
      bool isLoading,
      bool isNetworkError});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followings = null,
    Object? followers = null,
    Object? repos = null,
    Object? isLoading = null,
    Object? isNetworkError = null,
  }) {
    return _then(_$DetailStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      followings: null == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      repos: null == repos
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkError: null == isNetworkError
          ? _value.isNetworkError
          : isNetworkError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {required this.user,
      this.followings = 0,
      this.followers = 0,
      final List<Repo> repos = const <Repo>[],
      this.isLoading = true,
      this.isNetworkError = false})
      : _repos = repos;

  factory _$DetailStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailStateImplFromJson(json);

  @override
  final User user;
  @override
  @JsonKey()
  final int followings;
  @override
  @JsonKey()
  final int followers;
  final List<Repo> _repos;
  @override
  @JsonKey()
  List<Repo> get repos {
    if (_repos is EqualUnmodifiableListView) return _repos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isNetworkError;

  @override
  String toString() {
    return 'DetailState(user: $user, followings: $followings, followers: $followers, repos: $repos, isLoading: $isLoading, isNetworkError: $isNetworkError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followings, followings) ||
                other.followings == followings) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            const DeepCollectionEquality().equals(other._repos, _repos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isNetworkError, isNetworkError) ||
                other.isNetworkError == isNetworkError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, followings, followers,
      const DeepCollectionEquality().hash(_repos), isLoading, isNetworkError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailStateImplToJson(
      this,
    );
  }
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {required final User user,
      final int followings,
      final int followers,
      final List<Repo> repos,
      final bool isLoading,
      final bool isNetworkError}) = _$DetailStateImpl;

  factory _DetailState.fromJson(Map<String, dynamic> json) =
      _$DetailStateImpl.fromJson;

  @override
  User get user;
  @override
  int get followings;
  @override
  int get followers;
  @override
  List<Repo> get repos;
  @override
  bool get isLoading;
  @override
  bool get isNetworkError;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
