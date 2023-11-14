import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/repo_provider.dart';
import 'package:search_github/provider/search_provider.dart';
import 'package:search_github/page/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SearchProvider>(
              create: (context) => SearchProvider()),
          ChangeNotifierProvider<RepoProvider>(
              create: (context) => RepoProvider())
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: SearchPage()));
  }
}
