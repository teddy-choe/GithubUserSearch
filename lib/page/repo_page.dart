import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/repo_provider.dart';

class RepoPage extends StatefulWidget {
  const RepoPage({super.key, required this.repoName});

  final String repoName;

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text("${widget.repoName}"),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<RepoProvider>().getRepo(widget.repoName));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RepoProvider>().state;

    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: state.isLoading
              ? Expanded(
                  child: const Center(child: CircularProgressIndicator()))
              : state.repo == null
                  ? Expanded(
                      child:
                          const Center(child: Text("유저의 레포지토리를 가져오지 못했습니다.")))
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "The First Repository",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state.repo!.name,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state.repo!.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
        ),
      ),
    );
  }
}
