import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpgSettings extends StatefulWidget {
  const OpgSettings({super.key});

  @override
  State<OpgSettings> createState() => _OpgSettingsState();
}

class _OpgSettingsState extends State<OpgSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 163, 232, 84),
        title: SizedBox(
          child: Image.asset('assets/images/agroavenija-logo.png'),
          height: 80.0,
        ),
        centerTitle: true,
        leading: Container(
          color: const Color.fromARGB(255, 163, 232, 84),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/fi-rs-user.svg'),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/fi-rs-settings.svg'),
          ),
        ],
      ),
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
                  onPressed: () {},
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
                Navigator.pushNamed(context, '/opg-glavni-menu');
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Moj profil',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Ime',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Prezime',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Broj mobitela',
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
                    //
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
