import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/models/toggl/toggl_me.dart';

@Singleton()
class TogglRepository {
  final String baseUrl = "https://api.track.toggl.com/api/v9";

  Future<TogglMe> getMe() async {
    final String path = "$baseUrl/me";

    String username = 'mxg7y3ansl@gmail.com';
    String password = '';
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';

    final http.Response response = await http.get(
      Uri.parse(path),
      headers: <String, String>{'authorization': basicAuth},
    );

    return TogglMe.readJson(jsonDecode(response.body));
  }
}
