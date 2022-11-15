import 'package:flutter/material.dart';
import 'apitest.dart';

class drawer extends StatelessWidget {
  final text;
  Future<Album> futureAlbum;

  //futureAlbum = fetchAlbum();

  drawer(this.text) : futureAlbum = fetchAlbum();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Center(
            child: FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Local Time: " +
                            snapshot.data!.datetime.substring(11, 19)),
                        Text("Date: " +
                            snapshot.data!.datetime.substring(8, 10) +
                            "." +
                            snapshot.data!.datetime.substring(5, 7) +
                            "." +
                            snapshot.data!.datetime.substring(0, 4)),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                })));
  }
}
