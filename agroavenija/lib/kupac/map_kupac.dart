import 'package:flutter/material.dart';
import 'header_kupac.dart';

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
