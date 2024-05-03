import 'package:flutter/material.dart';
import 'header_kupac.dart';

// ovo je screen za mapu koju kupac vidi, na ovoj mapi cemo dodati da kupac vidi opgove, koristit cemo google maps api
class map_kupac extends StatelessWidget {
  const map_kupac({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header_kupac(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Natrag'),
          )
        ],
      ),
    );
  }
}
