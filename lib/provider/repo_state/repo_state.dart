import 'package:search_github/model/repo/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_state.freezed.dart';
part 'repo_state.g.dart';

@freezed
class RepoState with _$RepoState {
  const factory RepoState({
    @Default(null) Repo? repo,
    @Default(true) bool isLoading,
    @Default(false) bool isNetworkError
}) = _RepoState;

  factory RepoState.fromJson(Map<String, dynamic> json) => _$RepoStateFromJson(json);
}
