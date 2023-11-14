import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:search_github/provider/search_state.dart';
import 'package:search_github/repository/search_repository.dart';

/**
 * 검색 화면에서 사용
 */
class SearchProvider with ChangeNotifier {
  SearchState _state = SearchState();
  var logger = Logger();

  final SearchReposiory repository = SearchReposiory();

  SearchState get state => _state;

  search(String query) async {
    state.isLoading = true;
    notifyListeners();

    await repository.search(query).then((value) => {
      _state = SearchState.fromJson(json.decode(value.body))
    });

    logger.d(_state.totalCount);

    state.isLoading = false;
    notifyListeners();
  }
}