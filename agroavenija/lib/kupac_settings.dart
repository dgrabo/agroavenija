import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'header_kupac.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'kupac_glavni_menu.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: header_kupac(),
//     );
//   }
// }

class settingsKupac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return settingsScreen();
  }
}

class settingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header_kupac(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Postavke',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //
                  },
                  child: Text('Odjava'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, //
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              label: Text(
                'Glavni izbornik',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => KupacMenu(),
                ));
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Moj profil',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ime i prezime',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'e-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Broj mobitela',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pratite nas na društvenim mrežama'),
                SizedBox(width: 8.0),
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Handle Facebook button
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Handle Instagram button
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
