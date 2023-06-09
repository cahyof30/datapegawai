import 'package:http/http.dart' as http;

final apiClient = ApiClient(baseUrl: 'http://localhost:8080/klinik-api/');

class ApiClient {
  final String baseUrl;

  ApiClient({required this.baseUrl});

  Future<http.Response> get(String path) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.get(url);
    return response;
  }

  Future<http.Response> post(String path, dynamic data) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.post(url, body: data);
    return response;
  }

  Future<http.Response> put(String path, dynamic data) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.put(url, body: data);
    return response;
  }

  Future<http.Response> delete(String path) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.delete(url);
    return response;
  }
}
