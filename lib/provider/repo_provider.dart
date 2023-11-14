import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:search_github/provider/repo_state.dart';
import 'package:search_github/repository/repo_repository.dart';

/**
 * 레포 상세 화면에서 사용
 */
class RepoProvider with ChangeNotifier {
  RepoState _state = RepoState(null);
  RepoState get state => _state;
  final RepoReposiory repository = RepoReposiory();
  var logger = Logger();

  getRepo(String reposUrl) async {
    var response = await repository.getMainRepo(reposUrl);

    if(response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      if(l.isNotEmpty) {
        _state = RepoState.fromJson(l.first);
      }
    } else {
      // 에러 처리
      logger.d("network error");
    }

    _state.isLoading = false;
    notifyListeners();
  }
}