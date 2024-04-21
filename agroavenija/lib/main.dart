import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'header_kupac.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppExt(),
    );
  }
}

class MyAppExt extends StatefulWidget {
  const MyAppExt({super.key});

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  String buttonName = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header_kupac(),
      body: Container(
        color: Colors.grey[400],
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 90,
              child: Container(
                width: 200,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:
                          SvgPicture.asset('assets/icons/fi-rs-map-marker.svg'),
                    ),
                    Text('Trenutna lokacija')
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Center(
                child: Text('Search bar - kasnije dodati'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
