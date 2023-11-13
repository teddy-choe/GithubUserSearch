import 'package:http/http.dart' as http; // http 패키지 추가

import 'package:search_github/provider/search_state.dart';

class SearchReposiory {
  // static const String _baseUrl = 'https://api.github.com/search/';

  Future<http.Response> search(String query) async {
    Map<String, String> headers = {
      "Accept": "application/vnd.github+json"
    };

    final queryParameters = {'param1': query};
    final queryUri = Uri.parse('https://api.github.com/search/users').replace(queryParameters: {
      'q': query
    });
    // final uri = Uri.https('https://api.github.com', '/search', queryParameters);
    return await http.get(queryUri, headers: headers);
  }
}