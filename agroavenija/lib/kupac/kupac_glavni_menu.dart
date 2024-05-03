import 'package:agroavenija/common.dart';
import 'package:flutter/material.dart';
import 'header_kupac.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KupacMenu extends StatefulWidget {
  const KupacMenu({super.key});

  @override
  State<KupacMenu> createState() => _KupacMenuState();
}

class _KupacMenuState extends State<KupacMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header_kupac(),
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            // SliverAppBar(
            //   backgroundColor: Colors.red,
            //   automaticallyImplyLeading: false,
            //   pinned: false,
            //   floating: false,
            //   expandedHeight: 50.0,
            //   flexibleSpace: FlexibleSpaceBar(
            //     title: Text(
            //       textAlign: TextAlign.start,
            //       'Trenutna lokacija',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //     centerTitle: false,
            //     titlePadding: EdgeInsets.only(left: 48.0, bottom: 16.0),
            //     background: Padding(
            //       padding: const EdgeInsets.only(top: 40),
            //     ),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(children: [
                        SvgPicture.asset('assets/icons/fi-rs-map-marker.svg'),
                        Text(
                          textAlign: TextAlign.start,
                          '   Trenutna lokacija',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  // Search bar
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Pronađite OPG',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.green.shade100,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  // Vaši favoriti
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'VAŠI FAVORITI',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.favorite)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // GridView.builder(
                  //   physics:
                  //       NeverScrollableScrollPhysics(), 
                  //   shrinkWrap: true, 
                  //   itemCount: 8, 
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 4,
                  //     childAspectRatio: 4 / 2,
                  //   ),
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Card(
                  //       child: Center(child: Text('OPG #${index + 1}')),
                  //     );
                  //   },
                  // ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // scrollanje horizontalno
                      itemCount: 8, // broj opgova, promjeniti po potrebi
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 4), // razmak izmedu opgova
                          child: Container(
                            width:
                                120, // širina svakog opga u favoritima, promjeniti po potrebi
                            alignment: Alignment.center,
                            child: Text('OPG #${index + 1}'),
                          ),
                        );
                      },
                    ),
                  ),
                  // OPG mjeseca
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          'OPG MJESECA',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Icon(Icons.diamond)
                    ],
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.star),
                  //   title: Text('Malo o OPG-U'),
                  //   subtitle: Text(
                  //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  //   ),
                  // ),
                  // // Contact OPG section
                  // ListTile(
                  //   leading: Icon(Icons.email),
                  //   title: Text('opg@gmail.com'),
                  //   trailing: Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Icon(Icons.facebook),
                  //       Icon(Icons.facebook),
                  //       Icon(Icons.camera),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/kupac-settings');
                          },
                          child: Card(
                            color: Colors.lightGreen[
                                100], // background color of the card
                            child: SizedBox(
                              width: 200,
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Image.asset(
                                          'assets/images/agroavenija-logo.png')),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'OPG #1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: OutlinedButton(
                          onPressed: () async {
                            await client.auth.signOut();
                          },
                          child: Text(
                            'Sign out',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
