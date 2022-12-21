import 'package:banjarnegaranews/view/home.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                child: Image.asset('images/icon_user.png'),
              ),
              accountName: Text('Berkoh Jaya Abadi'),
              accountEmail: Text('19103999@ittelkom-pwt.ac.id'),
              decoration: BoxDecoration(
                color: Colors.red[700],
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Business'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.health_and_safety),
            title: Text('Healthy'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.sports),
            title: Text('Sports'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
