import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/Helsinki'));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final String datetime;

  const Album({
    required this.datetime,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(datetime: json['datetime']);
  }
}
