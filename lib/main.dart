import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:preferenciasusuario/src/pages/setting_page.dart';
import 'package:preferenciasusuario/src/preferencias/preferencias_usuario.dart';
 
void main() async {
  
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefe();
  
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage()
      },
    );
  }
}