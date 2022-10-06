import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../utils/constrains.dart';

class NetworkService {
  get({
    required String uri,
  }) async {
    final url = Uri.parse(Constrains.apiDomain + uri);
    final response = await http.get(
      url,
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body;
    } else {
      return null;
    }
  }
}
