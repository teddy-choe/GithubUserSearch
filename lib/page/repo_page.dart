import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/repo_provider.dart';

import '../model/repo.dart';

class RepoPage extends StatelessWidget {
  const RepoPage({super.key, required this.repoName});

  final String repoName;

  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text("$repoName"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RepoProvider>(builder: (context, provider, child) {
      provider.getRepo(repoName);

      if (provider.isLoading == true) {
        return Expanded(child: const Center(child: CircularProgressIndicator()));
      }

      if (provider.state.repo == null) {
        return Expanded(child: const Center(child: Text("유저의 레포지토리를 가져오지 못했습니다.")));
      }

      Repo repo = provider.state.repo!;
      return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  repo.name,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black45),
                ),
                Text(
                  repo.owner.login,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black45),
                ),
                Text(
                  repo.description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black45),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
