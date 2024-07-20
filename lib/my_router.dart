import 'package:flutter/material.dart';
import 'package:myapp/pantalla_inicio.dart';
import 'package:myapp/pantalla_login.dart';
import 'package:myapp/pantalla_registro.dart';
import 'package:myapp/my_routes.dart';


final Map<String, Widget Function(BuildContext)> routes = {
  MyRoutes.login.name: (context) => const PantallaLogin(key: Key('LoginPageState')),
  MyRoutes.register.name: (context) => const PantallaRegistro(key: Key('RegisterPageState')),
    MyRoutes.start.name: (context) => PantallaInicio(),
};