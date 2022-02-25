import 'package:flutter/material.dart';
import 'apitest.dart';

class drawer extends StatelessWidget {
  final text;
   Future<Album> futureAlbum;


    //futureAlbum = fetchAlbum();
  

  drawer(this.text): futureAlbum = fetchAlbum();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.datetime);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            }
          )
          )
      /*child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 330, bottom: 50),
              color: Color.fromARGB(255, 12, 138, 241),
              width: 400.0,
              height: 80.0,
            ),
            Container(
               margin: const EdgeInsets.all(10.0),
               padding: EdgeInsets.only(left: 330, bottom: 50),
               color: Color.fromARGB(255, 12, 138, 241),
               width: 400.0,
               height: 80.0,
            ),
          ],
        )
        ),*/
    );
  }
}