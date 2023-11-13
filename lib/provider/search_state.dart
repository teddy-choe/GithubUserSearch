import '../model/User.dart';

class SearchState {
  final int totalCount;
  final bool incompleteResult;
  final List<User?> users;

  factory SearchState.fromJson(Map json) {
    return SearchState(
        totalCount: json['total_count'],
        incompleteResult: json['incomplete_results'],
        users: (json['items'] as List)
            .map((e) => e == null ? null : User.fromJson(e))
            .toList());
  }

  SearchState(
      {required this.totalCount,
      required this.incompleteResult,
      required this.users});
}
