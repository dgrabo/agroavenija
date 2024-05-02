import 'package:flutter/material.dart';
import 'registracija_kupac.dart';
import 'registracija_opg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isKupac = true;
  String contentText = "Default KUPAC content";
  bool isCheckedKupac = false;
  bool isCheckedOPG = false;

  @override
  Widget build(BuildContext context) {
    Widget content = isKupac ? kupacContent() : opgContent();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          child: Image.asset('assets/images/agroavenija-logo.png'),
          height: 120.0,
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildElevatedButton('KUPAC', isKupac),
                    SizedBox(width: 10), // Space between buttons
                    buildElevatedButton('OPG', !isKupac),
                  ],
                ),
                SizedBox(
                  child: content, // Prikazuje odabrani sadržaj
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget kupacContent() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Prijava Kupac',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Nemate račun?', textAlign: TextAlign.start),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reg-kupac');
              },
              child: Text(
                'Registrirajte se!',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'E-mail',
            hintText: 'Unesite vašu e-mail adresu',
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Lozinka',
            hintText: 'Unesite lozinku',
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility_off),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  value: isCheckedKupac,
                  onChanged: (bool? newValue) {
                    setState(() {
                      if (newValue != null) {
                        isCheckedKupac = newValue;
                      }
                    });
                  },
                ),
                Text('Zapamti me'),
              ],
            ),
            TextButton(
              onPressed: () {
                // Forgot password screen action
              },
              child: Text(
                'Zaboravili ste lozinku?',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 15), // button padding
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/kupac-glavni-menu');
            },
            child: Text(
              'Prijava',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Widget opgContent() {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Prijava OPG',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Nemate račun?', textAlign: TextAlign.start),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/reg-opg');
            },
            child: Text(
              'Registrirajte se!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'E-mail',
          hintText: 'Unesite vašu e-mail adresu',
        ),
      ),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Lozinka',
          hintText: 'Unesite lozinku',
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility_off),
            onPressed: () {},
          ),
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: Colors.green,
                value: isCheckedOPG,
                onChanged: (bool? newValue) {
                  setState(() {
                    if (newValue != null) {
                      isCheckedOPG = newValue;
                    }
                  });
                },
              ),
              Text('Zapamti me'),
            ],
          ),
          TextButton(
            onPressed: () {
              // Forgot password screen action
            },
            child: Text(
              'Zaboravili ste lozinku?',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      SizedBox(height: 40),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green, // background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // rounded corners
            ),
            padding: EdgeInsets.symmetric(vertical: 15), // button padding
          ),
          onPressed: () {
            // Login action
          },
          child: Text(
            'Prijava',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      SizedBox(height: 30),
    ]);
  }

  Widget buildElevatedButton(String text, bool isActive) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? Colors.green : Colors.white,
        foregroundColor: isActive ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: isActive ? Colors.green : Colors.grey),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      onPressed: () {
        setState(() {
          isKupac = (text == 'KUPAC');
        });
      },
      child: Text(text),
    );
  }
}
