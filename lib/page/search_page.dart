import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/search_provider.dart';
import 'package:search_github/page/search_list.dart';

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
          context
              .read<SearchProvider>()
              .search(value);
        },
        decoration: const InputDecoration(
          hintText: 'search user',
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          suffixIcon: Icon(Icons.menu, color: Colors.grey),
          contentPadding: EdgeInsets.all(20)
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _searchBar(),
            SearchListScreen()
          ],
        ),
      ),
    );
  }
}