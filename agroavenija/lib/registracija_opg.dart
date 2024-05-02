import 'package:flutter/material.dart';

class OpgReg extends StatefulWidget {
  const OpgReg({super.key});

  @override
  State<OpgReg> createState() => _OpgRegState();
}

class _OpgRegState extends State<OpgReg> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isCheckedRegOpg = false;

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
                'OPG',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.0),
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
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Unesite vašu e-mail adresu',
              ),
            ),
            SizedBox(height: 7.0),
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
            SizedBox(height: 7.0),
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
            SizedBox(height: 7.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Ime OPG-a',
                hintText: 'Unesite ime vašeg OPG-a',
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Ime',
                hintText: 'Unesite vaše ime',
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Prezime',
                hintText: 'Unesite vaše prezime',
              ),
            ),
            SizedBox(height: 7.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Vaša adresa stanovanja',
                hintText: 'Unesite vašu adresu stanovanja',
              ),
            ),
            SizedBox(height: 7.0),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  value: isCheckedRegOpg,
                  onChanged: (bool? newValue) {
                    setState(() {
                      if (newValue != null) {
                        isCheckedRegOpg = newValue;
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
