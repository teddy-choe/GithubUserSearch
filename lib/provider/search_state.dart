import '../model/User.dart';

class SearchState {
  final int totalCount;
  final bool incompleteResult;
  final List<User> users;

  factory SearchState.fromJson(Map json) {
    var items = (json['items'] as List);
    items.removeWhere((element) => element == null);
    return SearchState(
        totalCount: json['total_count'],
        incompleteResult: json['incomplete_results'],
        users: items.map((e) => User.fromJson(e)).toList());
  }

  SearchState(
      {required this.totalCount,
      required this.incompleteResult,
      required this.users});
}
