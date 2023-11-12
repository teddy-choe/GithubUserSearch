import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Search Github Users"),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: "search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
}
