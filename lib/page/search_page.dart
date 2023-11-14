import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_github/page/search_list_item.dart';
import 'package:search_github/provider/search_provider.dart';

import '../model/User.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
          onSubmitted: (value) {
            context.read<SearchProvider>().search(value);
          },
          decoration: InputDecoration(
              hintText: 'search user',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              contentPadding: const EdgeInsets.all(20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SearchProvider>().state;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            _searchBar(),
            state.isLoading
                ? Expanded(
                    child: const Center(child: CircularProgressIndicator()))
                : state.totalCount == 0
                    ? Expanded(child: const Center(child: Text("유저를 검색해주세요.")))
                    : Expanded(
                        child: ListView.builder(
                            itemCount: state.totalCount,
                            itemBuilder: (context, index) {
                              User user = state.users[index];
                              return SearchListItem(user: user);
                            }),
                      )
          ],
        ),
      ),
    );
  }
}
