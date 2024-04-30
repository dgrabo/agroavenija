import 'package:flutter/material.dart';
import 'header_kupac.dart';

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: null,
            pinned: true,
            floating: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Ivo Ivić',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: false,
              titlePadding: EdgeInsets.only(left: 48.0, bottom: 16.0),
              background: Padding(
                padding: const EdgeInsets.only(top: 40),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
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
                // Your favorites section
                Text(
                  'VAŠI FAVORITI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                  shrinkWrap: true, // You won't see anything without this.
                  itemCount: 6, // Replace with your data length
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 3 / 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Center(child: Text('OPG #${index + 1}')),
                    );
                  },
                ),
                // OPG of the month section
                Text(
                  'OPG MJESECA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Malo o OPG-U'),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  ),
                ),
                // Contact OPG section
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('opg@gmail.com'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.facebook),
                      Icon(Icons.facebook),
                      Icon(Icons.camera),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}