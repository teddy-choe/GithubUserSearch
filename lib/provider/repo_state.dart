import 'package:search_github/model/repo.dart';

class RepoState {
  final Repo? repo;

  RepoState(this.repo);

  factory RepoState.fromJson(Map json) {
    return RepoState(Repo.fromJson(json));
  }
}
