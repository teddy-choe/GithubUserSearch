import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:search_github/provider/search_state.dart';
import 'package:search_github/repository/search_repository.dart';

class SearchProvider with ChangeNotifier {
  SearchState? _state;

  final SearchReposiory repository = SearchReposiory();

  SearchState? get state => _state;

  Future<bool> search(String query) async {
    await repository.search(query).then((value) => {
      _state = SearchState.fromJson(json.decode(value.body))
    });

    notifyListeners();
    return true;
  }
}