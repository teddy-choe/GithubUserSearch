import 'package:http/http.dart' as http;

class RepoReposiory {
  Future<http.Response> getMainRepo(String reposUrl) async {
    Map<String, String> headers = {"Accept": "application/vnd.github+json"};
    return await http.get(Uri.parse(reposUrl), headers: headers);
  }
}
