import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:preferenciasusuario/src/pages/setting_page.dart';

class MenuWidget extends StatelessWidget {

  const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            // contentPadding: EdgeInsets.symmetric( horizontal: 0.0 ),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.0),
            leading: Icon( Icons.pages, color: Colors.blue, ),
            title: Text('Inicio'),
            selected: true,

            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),

          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue, ),
            title: Text('Party mode'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.blue, ),
            title: Text('People'),
            enabled: false,
            onTap: () {},
          ),

          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue, ),
            title: Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              // Navigator.pushNamed(context, SettingsPage.routeName);
            },
          ),

        ],
      ),
    );
  }
}