import 'package:app_tec_isc/pages/form_page.dart';
import 'package:app_tec_isc/pages/home_page.dart';
import 'package:app_tec_isc/pages/identidad_page.dart';
import 'package:app_tec_isc/pages/mapa_page.dart';
import 'package:app_tec_isc/pages/perfiles_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEC ISC',
      theme: ThemeData.dark(),
      initialRoute: 'home_page',
      routes: {
        'home_page'  : (_) => const HomePage(),
        'perfiles_page': (_) => const PerfilesView(),
        'identidad_page': (_) => const Identidad(),
        'mapa_page': (_) => const MapWithMarker(),
        'form_page': (_) => FormPage()
      },
    );
  }
}