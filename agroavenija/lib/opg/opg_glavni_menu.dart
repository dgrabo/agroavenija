import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'opg_pocetna.dart';
import 'opgkalendar.dart';
import 'opguredi.dart';
// import 'package:flutter/widgets.dart';
// import 'header_kupac.dart';

class OpgGlavniMenu extends StatefulWidget {
  const OpgGlavniMenu({super.key});

  @override
  State<OpgGlavniMenu> createState() => _OpgGlavniMenuState();
}

class _OpgGlavniMenuState extends State<OpgGlavniMenu> {
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
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/opg-settings',
              );
            },
            icon: SvgPicture.asset('assets/icons/fi-rs-settings.svg'),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: <Widget>[
          _buildGridCard('Termin degustacije', Icons.calendar_today, context),
          _buildGridCard('Smještaj', Icons.hotel, context),
          _buildGridCard('Proizvodi', Icons.local_florist, context),
          _buildGridCard('Profil OPG-a', Icons.account_balance, context),
        ],
      ),
    );
  }

  Card _buildGridCard(String title, IconData icon, BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      // Apply shadow around the card
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          // Handle card tap
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tapped on $title')),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 48.0, color: Colors.black54),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
