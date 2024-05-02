import 'package:flutter/material.dart';

class KupacReg extends StatefulWidget {
  const KupacReg({super.key});

  @override
  State<KupacReg> createState() => _KupacRegState();
}

class _KupacRegState extends State<KupacReg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isCheckedRegKupac = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          child: Image.asset('assets/images/agroavenija-logo.png'),
          height: 120.0,
        ),
        toolbarHeight: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      // body: Container(
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: [],
      //     ),
      //   ),
      // ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                textAlign: TextAlign.center,
                'KUPAC',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Napravite račun',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Text(
                  'Imate račun?',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.start,
                ),
                TextButton(
                  child: Text(
                    'Prijavite se!',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Unesite vašu e-mail adresu',
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Ime',
                hintText: 'Unesite vaše ime',
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Prezime',
                hintText: 'Unesite vaše prezime',
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Lozinka',
                hintText: 'Unesite lozinku',
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {},
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Ponovite lozinku',
                hintText: 'Potvrdite vašu lozinku',
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {},
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  value: isCheckedRegKupac,
                  onChanged: (bool? newValue) {
                    setState(() {
                      if (newValue != null) {
                        isCheckedRegKupac = newValue;
                      }
                    });
                  },
                ),
                Text('Prihvaćam uvjete korištenja'),
              ],
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle registration
              },
              child: Text(
                'Registriraj me',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                textStyle: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
