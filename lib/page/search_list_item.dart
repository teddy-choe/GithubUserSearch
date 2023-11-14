import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_github/page/repo_page.dart';

import '../model/user.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(user.avatarUrl),
      title: Text(user.login),
      subtitle: Text(user.reposUrl),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                RepoPage(repoName: user.reposUrl)));
      },
    );
  }
}
