// import 'package:flutter/cupertino.dart';
import 'package:agroavenija/common.dart';
import 'package:flutter/material.dart';
import 'kupac/registracija_kupac.dart';
import 'opg/registracija_opg.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'header_kupac.dart';
import 'kupac/kupac_glavni_menu.dart';
import 'opg/opg_glavni_menu.dart';
import 'glavnaPrijava.dart';
import 'kupac/kupac_settings.dart';
import 'opg/opg_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // SUPABASE_URL
    url: 'url',
    // SUPABASE_ANON_KEY
    anonKey: 'key',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // User? _user;
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
        '/kupac-settings': (context) => settingsKupac(),
        '/opg-settings': (context) => OpgSettings(),
      },
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  User? _user;

  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    setState(() {
      _user = client.auth.currentUser;
    });
    client.auth.onAuthStateChange.listen((event) {
      setState(() {
        _user = event.session?.user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _user == null ? const LoginPage() : const KupacMenu(),
    );
  }
}
