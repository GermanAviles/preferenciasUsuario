import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';


  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: _crearMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre usuario: '),
          Divider(),
        ],
      ),
    );
  }

  Drawer _crearMenu() {
    return Drawer(
      
    );
  }

}