import 'package:agroavenija/common.dart';
import 'package:flutter/material.dart';
// import 'registracija_kupac.dart';
// import 'registracija_opg.dart';
// import 'kupac/registracija_kupac.dart' as regkupac;

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

  bool _signInLoading = false;
  bool _signUpLoading = false;
  final _emailContoller = TextEditingController();
  final _passwordContoller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailContoller.dispose();
    _passwordContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = isKupac ? kupacContent() : opgContent();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
    return Form(
      key: _formKey,
      child: Column(
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
              // TextButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/reg-kupac');
              //   },
              //   child: Text(
              //     'Registrirajte se!',
              //     style: TextStyle(
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
            ],
          ),
          _signInLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid != true) {
                          return;
                        }

                        setState(() {
                          _signUpLoading = true;
                        });

                        try {
                          await client.auth.signUp(
                            email: _emailContoller.text,
                            password: _passwordContoller.text,
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Success. Confirm your account.'),
                            backgroundColor: Color.fromARGB(255, 163, 232, 84),
                          ));
                          setState(() {
                            _signUpLoading = false;
                          });
                        } catch (e) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Sign up failed'),
                            backgroundColor: Colors.red,
                          ));
                          setState(() {
                            _signUpLoading = false;
                          });
                        }
                        setState(() {
                          _signUpLoading = false;
                        });
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please fill in email address';
              }
              return null;
            },
            controller: _emailContoller,
            decoration: InputDecoration(
              labelText: 'E-mail',
              hintText: 'Unesite vašu e-mail adresu',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please fill password';
              }
              return null;
            },
            controller: _passwordContoller,
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
                    activeColor: Color.fromARGB(255, 163, 232, 84),
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
          _signInLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 163, 232, 84), // background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // rounded corners
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15), // button padding
                    ),
                    onPressed: () async {
                      final isValid = _formKey.currentState?.validate();
                      if (isValid != true) {
                        return;
                      }
                      setState(() {
                        _signInLoading = true;
                      });
                      try {
                        await client.auth.signInWithPassword(
                          email: _emailContoller.text,
                          password: _passwordContoller.text,
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Login failed'),
                          backgroundColor: Colors.red,
                        ));
                        setState(() {
                          _signInLoading = false;
                        });
                      }
                    },
                    child: Text(
                      'Prijava',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
          SizedBox(height: 30),
        ],
      ),
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
                activeColor: Color.fromARGB(255, 163, 232, 84),
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
            backgroundColor:
                Color.fromARGB(255, 163, 232, 84), // background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // rounded corners
            ),
            padding: EdgeInsets.symmetric(vertical: 15), // button padding
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/opg-glavni-menu',
            );
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
        backgroundColor:
            isActive ? Color.fromARGB(255, 163, 232, 84) : Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
              color:
                  isActive ? Color.fromARGB(255, 163, 232, 84) : Colors.grey),
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
