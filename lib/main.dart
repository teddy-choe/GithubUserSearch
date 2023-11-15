import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              create: (context) => SearchProvider())
        ],
        child: MaterialApp(
            title: 'Search Github',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
              appBarTheme: AppBarTheme(backgroundColor: Colors.orange[300]),
              scaffoldBackgroundColor: Colors.orange[100],
              useMaterial3: true,
            ).copyWith(),
            home: SearchPage()));
  }
}
