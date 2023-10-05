import 'dart:convert';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<dynamic> getListOfProfessionals() async {
    final response = await http.get(Uri.parse('https://api.ajuda.academy/profissionais'));

    return _handleResponse(response);
  }

  Future<dynamic> getProfConsultas() async {
    final response = await http.get(Uri.parse('https://api.ajuda.academy/profissional-agendas/profissionais/1'));

    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      // Successful response, parse and return the JSON data
      return jsonDecode(response.body);
    } else if (response.statusCode == 404) {
      // Not found (404) error
      return "APP_ERROR";
    } else {
      // Server error (500 and above)
      return "SERVER_ERROR";
    }
  }
}
