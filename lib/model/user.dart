class User {
  final String login;
  final int id;
  final String nodeId;
  final String avatarId;
  final String gravatarId;
  final String url;
  final String htmlUrl;
  final String followersUrl;
  final String subscriptionsUrl;
  final String organizationsUrl;
  final String reposUrl;
  final String received_eventsUrl;
  final String type;
  final int score;
  final String followingUrl;
  final String gistsUrl;
  final String starredUrl;
  final String eventsUrl;
  final bool siteAdmin;

  User(
      this.login,
      this.id,
      this.nodeId,
      this.avatarId,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.received_eventsUrl,
      this.type,
      this.score,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.eventsUrl,
      this.siteAdmin);
}
