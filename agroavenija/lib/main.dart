import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          color: Colors.blue,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/fi-rs-user.svg'),
              ),
              Expanded(
                child: Text(
                  'Ivo',
                  // overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/fi-rs-map.svg')),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/fi-rs-settings.svg'),
          ),
        ],
      ),
    );
  }
}
