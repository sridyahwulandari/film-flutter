import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sinopsis_film/home.dart';
import 'package:sinopsis_film/kategori.dart';
import 'package:sinopsis_film/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Beranda(),
  ));
}

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _halIndex = 0;

  // memanggil halaman
  final Home _home = Home();
  final Kategori _kategori = Kategori();
  final HomeScreen _homeScreen = HomeScreen();

  Widget _tampilkanHal = new Home();

  // membuat Rooting

  Widget _pilihHal(int hal) {
    switch (hal) {
      case 0:
        return _home;
        break;
      case 1:
        return _kategori;
        break;
      case 2:
        return _homeScreen;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Sinopsis Film"),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          new IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Desi dan Sri"),
            accountEmail: Text("desisri@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.orange),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.notification_important,
                color: Colors.orange[900],
              ),
              title: Text("New Arrival"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.favorite_border, color: Colors.red),
              title: Text("Favorite"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.date_range,
                color: Colors.blue[700],
              ),
              title: Text("Release"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: Text("Setting"),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              title: Text("Logout"),
            ),
          )
        ],
      )),
      body: _tampilkanHal,
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.border_all,
              color: Colors.white,
            ),
            Icon(
              Icons.video_collection_outlined,
              color: Colors.white,
            ),
          ],
          color: Colors.orange,
          backgroundColor: Colors.white,
          animationCurve: Curves.bounceInOut,
          animationDuration: Duration(milliseconds: 100),
          height: 60,
          index: _halIndex,
          onTap: (int tekan) {
            setState(() {
              _tampilkanHal = _pilihHal(tekan);
            });
          }),
    );
  }
}