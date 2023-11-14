class User {
  final int id;
  final String login;
  final String avatarUrl;
  final String htmlUrl;
  final String reposUrl;
  final double score;
  final String starredUrl;

  factory User.fromJson(Map json) {
    return User(
        id: json['id'],
        login: json['login'],
        avatarUrl: json['avatar_url'],
        htmlUrl: json['html_url'],
        reposUrl: json['repos_url'],
        score: json['score'],
        starredUrl: json['starred_url']);
  }

  User(
      {required this.login,
      required this.id,
      required this.avatarUrl,
      required this.htmlUrl,
      required this.reposUrl,
      required this.score,
      required this.starredUrl});
}
