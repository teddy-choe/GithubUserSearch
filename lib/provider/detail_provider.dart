import 'package:flutter/foundation.dart';
import 'package:search_github/provider/repo_state/detail_state.dart';
import 'package:search_github/repository/detail_repository.dart';
import 'package:search_github/util/logger.dart';

import '../model/repo/repo.dart';
import '../model/user/user.dart';

class DetailProvider with ChangeNotifier {
  DetailProvider(User user)
  : _state = DetailState(user: user);

  DetailState _state;
  DetailState get state => _state;
  final DetailRepository _repository = DetailRepository();

  fetchUserAndRepoList() async {
    _state = _state.copyWith(
        isLoading: true
    );
    notifyListeners();

    await _getFollowers();
    await _getFollowings();
    await _getRepos(_state.user.reposUrl);

    _state = _state.copyWith(
        isLoading: false
    );
    notifyListeners();
  }

  Future<void> _getFollowers() async {
    var response = await _repository.getFollowers(_state.user.followersUrl);
    int count = (response.data as List).length;
    _state = _state.copyWith(
      followers: count
    );
    return;
  }

  Future<void> _getFollowings() async {
    var response = await _repository.getFollowings(_state.user.followingUrl);
    int count = (response.data as List).length;
    _state = _state.copyWith(
        followings: count
    );
    return;
  }

  Future<void> _getRepos(String reposUrl) async {
    var response = await _repository.getRepos(reposUrl);

    if(response.statusCode == 200) {
      Iterable reposJson = response.data;

      if(reposJson.isNotEmpty) {
        List<Repo> repos = [];
        for (final element in reposJson) {
          repos.add(Repo.fromJson(element));
        }
        _state = _state.copyWith(
          repos: repos
        );
      }
    } else {
      _state = _state.copyWith(
        isNetworkError: true
      );
      LoggerProvider.logger.d("network error");
    }

    return;
  }
}