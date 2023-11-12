import 'package:flutter/cupertino.dart';
import 'package:search_github/repository/search_repository.dart';

class SearchProvider with ChangeNotifier {
  final SearchReposiory reposiory;

  SearchProvider({required this.reposiory});
}