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
  var logger = Logger();
  bool isLoading = false;

  final RepoReposiory repository = RepoReposiory();

  RepoState get state => _state;

  getRepo(String reposUrl) async {
    isLoading = true;
    notifyListeners();

    var response = await repository.getMainRepo(reposUrl);

    if(response.statusCode == 200) {
      Iterable l = json.decode(response.body);

      if(l.isNotEmpty) {
        _state = RepoState.fromJson(l.first);
      }
    } else {
      // 에러 처리
    }

    isLoading = false;
    notifyListeners();
  }
}