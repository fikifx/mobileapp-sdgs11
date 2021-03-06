import 'package:flutter/material.dart';
import 'package:flutter_app/about.dart';
import 'package:flutter_app/detailrumah.dart';
import 'package:flutter_app/login.dart';
import 'route.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(30),
        child: Text(
          'Situs Jual Beli Perumahan Terpercaya Hanya di HomeCraft',
          softWrap: true,
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMECRAFT"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.green,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://i.ibb.co/3vMfNnK/Whats-App-Image-2021-01-13-at-12-35-52.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Tentang Aplikasi'),
              onTap: () {
                Routing.changePages(context, TentangAplikasi());
              },
            ),
            ListTile(
              title: Text('Login/Register'),
              onTap: () {
                Routing.changePagesFul(context, LoginPage());
              },
            )
          ],
        ),
      ),
      body: RumahPertama(),
//        body: ListView(
//          children: [
//            Image.asset(
//              'assets/GI1.jpg',
//              fit: BoxFit.cover,
//            ),
//            titleSection,
//          ],
//        )
    );
  }
}

class RumahPertama extends StatelessWidget {
  RumahPertama();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Perumahan Gading Intan Permata Driyorejo Gresik',
                    style: TextStyle(
                        fontFamily: 'OpenSans-ExtraBold', fontSize: (20)),
                  ),
                  subtitle: Text(
                    'Perumahan bersubsidi harga mulai dari Rp 200 Juta-an!',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image.asset('assets/GI1.jpg'),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title:
                      const Text('Mojosarirejo, Driyorejo, Gresik, Jawa Timur'),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: const Text("Rp. 200.000.000"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Rumah murah dijual dikawasan Driyorejo mempunyai luas bangunan 36m2 dan luas tanah 60m2.'
                    'Memiliki sertifikat hak guna bangunan dan mempunyai daya listrik 1300 watt. Menjadikan Gading Intan sebagai'
                    'pilihan yang tepat untuk keluarga anda',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF8BC34A),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('DETAIL'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Perumahan Maura Garden Gresik',
                    style: TextStyle(
                        fontFamily: 'OpenSans-ExtraBold', fontSize: (20)),
                  ),
                  subtitle: Text(
                    'Perumahan bersubsidi harga mulai dari Rp 200 Juta-an!',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image.asset('assets/MG1.jpg'),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: const Text('Menganti, Menganti, Gresik, Jawa Timur'),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: const Text("Rp. 200.000.000"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Rumah murah dijual dikawasan Menganti mempunyai luas bangunan 38m2 dan luas tanah 60m2.'
                    'Memiliki sertifikat hak guna bangunan dan mempunyai daya listrik 1300 watt. Menjadikan Gading Intan sebagai'
                    'pilihan yang tepat untuk keluarga anda',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF8BC34A),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('DETAIL'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
