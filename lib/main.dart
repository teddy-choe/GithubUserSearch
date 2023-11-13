import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/search_provider.dart';
import 'package:search_github/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider<SearchProvider>(
            create: (context) => SearchProvider(),
            child: const SearchPage()),
      );
  }
}
