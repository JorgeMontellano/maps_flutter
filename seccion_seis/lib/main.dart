import 'package:flutter/material.dart';
import 'package:seccion_seis/src/pages/home_page.dart';
//import 'package:seccion_seis/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componente APP',
        home: HomePage());
  }
}
