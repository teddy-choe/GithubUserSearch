import 'package:flutter/material.dart';

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
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: const Icon(Icons.menu, color: Colors.grey),
          contentPadding: const EdgeInsets.all(20)
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            _searchBar(),
          ],
        ),
      ),
    );
  }
}
