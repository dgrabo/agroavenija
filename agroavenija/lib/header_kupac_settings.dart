import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'header_kupac.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: header_kupac(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header_kupac(),
    );
  }
}
