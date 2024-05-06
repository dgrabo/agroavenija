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
      body: Text(''),
    );
  }
}
