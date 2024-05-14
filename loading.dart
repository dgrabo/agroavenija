
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void podaci() async {
    // await instance.getPodaci();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: const Image(
            image: AssetImage('assets/images/agroavenija-logo.png'),

          ),
        ),

      ),

    );
  }
}

