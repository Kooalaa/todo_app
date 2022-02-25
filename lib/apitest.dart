import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Album> fetchAlbum() async{
  final response = await http.get(Uri.parse(/*'https://jsonplaceholder.typicode.com/albums/1'*/'http://worldtimeapi.org/api/timezone/Europe/Helsinki'));
  if (response.statusCode == 200){
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
 // return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}

class Album {
  //final int userId;
  //final int id;
  //final String title;
  final String datetime;

  const Album({
    //required this.userId,
    //required this.id,
    //required this.title,
    required this.datetime,
  });

  factory Album.fromJson(Map<String, dynamic> json){
  return Album(/*userId: json['userId'],
              id: json['id'],
              title: json['title'],*/
              datetime: json['datetime']);
    }
}