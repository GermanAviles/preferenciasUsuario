import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefe() async {
    _prefs = await SharedPreferences.getInstance(); 
  }

  /* ... Getters setters ... */

  // Genero
  get genero => _prefs.get('genero') ?? 1;
  set genero ( int value ) => _prefs.setInt('genero', value);

  // Color secundario
  get colorSecundario => _prefs.get('colorSecundario') ?? false;
  set colorSecundario ( bool value ) => _prefs.setBool('colorSecundario', value);

  // Nombre Usuario
  get nombreUsuario => _prefs.get('nombreUsuario') ?? '';
  set nombreUsuario ( String value ) => _prefs.setString('nombreUsuario', value);

  // Ultima pagina
  get ultimaPagina => _prefs.get('ultimaPagina') ?? HomePage.routeName;
  set ultimaPagina ( String value ) => _prefs.setString('ultimaPagina', value);


}