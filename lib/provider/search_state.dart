import '../model/User.dart';

class SearchState {
  bool isLoading = false;
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

  SearchState({
    this.totalCount = 0,
    this.incompleteResult = false,
    this.users = const []
});
}
