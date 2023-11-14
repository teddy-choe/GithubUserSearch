import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:search_github/provider/repo_state.dart';
import 'package:search_github/repository/repo_repository.dart';

import '../model/repo.dart';

/**
 * 레포 상세 화면에서 사용
 */
class RepoProvider with ChangeNotifier {
  RepoState _state = RepoState();
  RepoState get state => _state;
  final RepoReposiory repository = RepoReposiory();
  var logger = Logger();

  getRepo(String reposUrl) async {
    _state = _state.copyWith(
        isLoading: true
    );
    notifyListeners();

    var response = await repository.getMainRepo(reposUrl);
    if(response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      if(l.isNotEmpty) {
        final result = Repo.fromJson(l.first);
        _state = _state.copyWith(
          repo: result
        );
      }
    } else {
      // 에러 처리
      _state = _state.copyWith(
        isNetworkError: true
      );
      logger.d("network error");
    }

    _state = _state.copyWith(
      isLoading: false
    );
    notifyListeners();
  }
}