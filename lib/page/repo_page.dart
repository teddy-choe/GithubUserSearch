import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/model/user/user.dart';
import 'package:search_github/provider/repo_provider.dart';

import '../model/repo/repo.dart';

class RepoPage extends StatefulWidget {
  const RepoPage({super.key, required this.user});

  final User user;

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  late final StreamSubscription subscription;

  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(widget.user.login),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<RepoProvider>().getRepo(widget.user.reposUrl));

    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if(result == ConnectivityResult.none) {
        const snackBar = SnackBar(
          content: Text('네트워크를 연결해주세요.'),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RepoProvider>().state;

    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          state.isLoading
              ? Expanded(child: Center(child: CircularProgressIndicator()))
              : state.repo == null
                  ? Expanded(child: Center(child: Text("유저의 정보를 가져오지 못했습니다.")))
                  : _repoPageContent(widget.user, state.repo!),
        ]),
      ),
    );
  }
}

Widget _repoPageContent(User user, Repo repo) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
            imageUrl: user.avatarUrl,
            placeholder: (context, url) => const FlutterLogo()),
        const SizedBox(height: 8),
        Text(
          "user's score: ${user.score.toString()}",
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 8),
        const Text(
          "Main Repository",
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          repo.fullName,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          repo.description,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, color: Colors.black54),
        )
      ],
    ),
  );
}
