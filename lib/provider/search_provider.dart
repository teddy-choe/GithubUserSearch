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

  search(String query) {
    _state = _state.copyWith(query: query);
    fetchPage();
  }

  fetchPage() async {
    logger.d("load more");
    if (_state.query == "") {
      logger.d("query is empty");
    } else {
      _state = _state.copyWith(isLoading: true);
      notifyListeners();

      final result = await _getSearchState(_state.currentPage);
      _state = _state.copyWith(
          currentPage: _state.currentPage + 1,
          isLoading: false,
          totalCount: result.totalCount,
          incompleteResult: result.incompleteResult,
          users: _state.users + result.users);
      notifyListeners();
    }
  }

  Future<SearchState> _getSearchState(int page) async {
    final response = await repository.search(_state.query, page);
    return SearchState.fromJson(json.decode(response.body));
  }
}
