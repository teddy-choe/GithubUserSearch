import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/detail_provider.dart';
import 'package:search_github/provider/repo_state/detail_state.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final StreamSubscription subscription;

  PreferredSizeWidget appBar(BuildContext context) {
    final state = context.watch<DetailProvider>().state;

    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(state.user.login),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<DetailProvider>().fetchUserAndRepoList());

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
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
    final state = context.watch<DetailProvider>().state;

    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          state.isLoading
              ? Expanded(child: Center(child: CircularProgressIndicator()))
              : state.repos.isEmpty
                  ? Expanded(child: Center(child: Text("유저의 정보를 가져오지 못했습니다.")))
                  : _detailPageContent(state),
        ]),
      ),
    );
  }
}

Widget _detailPageContent(DetailState state) {
  return Expanded(
    child: ListView.separated(
        itemCount: state.repos.length + 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return CachedNetworkImage(
                imageUrl: state.user.avatarUrl,
                placeholder: (context, url) => const FlutterLogo());
          }

          if (index == 1) {
            return Text(
              "user's score: ${state.user.score.toString()}",
              style: TextStyle(fontSize: 16, color: Colors.black),
            );
          }

          if (index == 2) {
            return Text(
              "followers: ${state.followers}",
              style: TextStyle(fontSize: 16, color: Colors.black),
            );
          }

          if (index == 3) {
            return Text(
              "followings: ${state.followings}",
              style: TextStyle(fontSize: 16, color: Colors.black),
            );
          }

          if (index == 4) {
            return const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                "User's Repositories",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
            );
          }

          return ListTile(
            title: Text(state.repos[index - 5].name),
            subtitle: Text(state.repos[index - 5].description),
            tileColor: Colors.amber[300],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            )),
  );
}
