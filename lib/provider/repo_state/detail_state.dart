import 'package:search_github/model/repo/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github/model/user/user.dart';

part 'detail_state.freezed.dart';
part 'detail_state.g.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required User user,
    @Default(0) int followings,
    @Default(0) int followers,
    @Default(<Repo>[]) List<Repo> repos,
    @Default(true) bool isLoading,
    @Default(false) bool isNetworkError
}) = _DetailState;

  factory DetailState.fromJson(Map<String, dynamic> json) => _$DetailStateFromJson(json);
}
