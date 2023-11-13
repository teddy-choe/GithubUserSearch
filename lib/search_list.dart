import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/provider/search_provider.dart';

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      return Expanded(
        child: ListView.builder(
            itemCount: provider.state?.totalCount,
            itemBuilder: (context, index) {
              return Text("hihi");
            }),
      );
    });
  }
}
