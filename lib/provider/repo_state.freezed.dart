// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoState _$RepoStateFromJson(Map<String, dynamic> json) {
  return _RepoState.fromJson(json);
}

/// @nodoc
mixin _$RepoState {
  Repo? get repo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isNetworkError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoStateCopyWith<RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res, RepoState>;
  @useResult
  $Res call({Repo? repo, bool isLoading, bool isNetworkError});

  $RepoCopyWith<$Res>? get repo;
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res, $Val extends RepoState>
    implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = freezed,
    Object? isLoading = null,
    Object? isNetworkError = null,
  }) {
    return _then(_value.copyWith(
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as Repo?,
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
  $RepoCopyWith<$Res>? get repo {
    if (_value.repo == null) {
      return null;
    }

    return $RepoCopyWith<$Res>(_value.repo!, (value) {
      return _then(_value.copyWith(repo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoStateImplCopyWith<$Res>
    implements $RepoStateCopyWith<$Res> {
  factory _$$RepoStateImplCopyWith(
          _$RepoStateImpl value, $Res Function(_$RepoStateImpl) then) =
      __$$RepoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Repo? repo, bool isLoading, bool isNetworkError});

  @override
  $RepoCopyWith<$Res>? get repo;
}

/// @nodoc
class __$$RepoStateImplCopyWithImpl<$Res>
    extends _$RepoStateCopyWithImpl<$Res, _$RepoStateImpl>
    implements _$$RepoStateImplCopyWith<$Res> {
  __$$RepoStateImplCopyWithImpl(
      _$RepoStateImpl _value, $Res Function(_$RepoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = freezed,
    Object? isLoading = null,
    Object? isNetworkError = null,
  }) {
    return _then(_$RepoStateImpl(
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as Repo?,
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
class _$RepoStateImpl implements _RepoState {
  const _$RepoStateImpl(
      {this.repo = null, this.isLoading = true, this.isNetworkError = false});

  factory _$RepoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoStateImplFromJson(json);

  @override
  @JsonKey()
  final Repo? repo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isNetworkError;

  @override
  String toString() {
    return 'RepoState(repo: $repo, isLoading: $isLoading, isNetworkError: $isNetworkError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoStateImpl &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isNetworkError, isNetworkError) ||
                other.isNetworkError == isNetworkError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repo, isLoading, isNetworkError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoStateImplCopyWith<_$RepoStateImpl> get copyWith =>
      __$$RepoStateImplCopyWithImpl<_$RepoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoStateImplToJson(
      this,
    );
  }
}

abstract class _RepoState implements RepoState {
  const factory _RepoState(
      {final Repo? repo,
      final bool isLoading,
      final bool isNetworkError}) = _$RepoStateImpl;

  factory _RepoState.fromJson(Map<String, dynamic> json) =
      _$RepoStateImpl.fromJson;

  @override
  Repo? get repo;
  @override
  bool get isLoading;
  @override
  bool get isNetworkError;
  @override
  @JsonKey(ignore: true)
  _$$RepoStateImplCopyWith<_$RepoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
