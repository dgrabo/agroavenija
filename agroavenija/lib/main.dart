// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'registracija_kupac.dart';
import 'registracija_opg.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'header_kupac.dart';
import 'kupac_glavni_menu.dart';
import 'opg_glavni_menu.dart';
import 'glavnaPrijava.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // SUPABASE_URL
    url: 'SUPABASE_URL',
    // SUPABASE_ANON_KEY
    anonKey: 'SUPABASE_URL',
  );
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
    return MaterialApp(
      // definiranje ruta za navigaciju
      routes: {
        // '/': (context) => LoginPage(),
        '/reg-kupac': (context) => KupacReg(),
        '/reg-opg': (context) => OpgReg(),
        '/opg-glavni-menu': (context) => OpgGlavniMenu(),
        '/prijava-kupac-opg': (context) => LoginPage(),
        '/kupac-glavni-menu': (context) => KupacMenu(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
