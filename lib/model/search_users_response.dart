import 'User.dart';

class UsersResponse {
  final int totalCount;
  final bool incompleteResult;
  final List<User> users;

  UsersResponse(this.totalCount, this.incompleteResult, this.users);
}