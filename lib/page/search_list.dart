import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/page/repo_page.dart';
import 'package:search_github/provider/search_provider.dart';

import '../model/User.dart';

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      if (provider.isLoading == true) {
        return const Center(child: CircularProgressIndicator());
      }

      if (provider.state == null) {
        return const Center(child: Text("유저를 검색해주세요."));
      }

      return Expanded(
        child: ListView.builder(
            itemCount: provider.state!.totalCount,
            itemBuilder: (context, index) {
              User user = provider.state!.users[index];
              return ListTile(
                leading: Image.network(user.avatarUrl),
                title: Text(user.login),
                subtitle: Text(user.reposUrl),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RepoPage(userName: user.login)));
                },
              );
            }),
      );
    });
  }
}
