import 'package:http/http.dart' as http;

class SearchReposiory {
  static const String _baseUrl = 'https://api.github.com/search/';

  Future<http.Response> search(String query) async {
    Map<String, String> headers = {"Accept": "application/vnd.github+json"};

    final queryUri =
        Uri.parse(_baseUrl + 'users').replace(queryParameters: {'q': query});
    return await http.get(queryUri, headers: headers);
  }
}
