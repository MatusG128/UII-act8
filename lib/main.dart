import 'package:flutter/material.dart';
import 'package:matus0380/movies.dart';
import 'package:matus0380/profile.dart';
import 'package:matus0380/buttons.dart';
//import 'package:nevarez/row_cinco.dart';

import 'contact.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String contacts = Contact.routeName;
  static const String buttons = Butttons.routeName;
  //static const String row_cinco = Row_cinco.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        contacts: (context) => Contact(),
        buttons: (context) => Butttons(),
        //  row_cinco: (context) => Row_cinco(),
      },
      home: Inicio(),
    );
  }
}
