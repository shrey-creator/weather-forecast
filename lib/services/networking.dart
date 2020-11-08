import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper({this.url});
  Future<http.Response> getData() async {
    try {
      http.Response response = await http.get(url);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
