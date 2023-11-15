import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:search_github/page/detail_page.dart';

import '../model/user/user.dart';
import '../provider/detail_provider.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
          imageUrl: user.avatarUrl,
          placeholder: (context, url) => const FlutterLogo()),
      title: Text(user.login),
      subtitle: Text(user.reposUrl),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider<DetailProvider>(
                create: (context) => DetailProvider(user),
                builder: (context, child) => DetailPage())));
      },
    );
  }
}
