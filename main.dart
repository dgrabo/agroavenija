import 'package:flutter/material.dart';


import 'package:agroavenija/Loading.dart';
import 'package:agroavenija/home.dart';


void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => Home(),
    }
));

