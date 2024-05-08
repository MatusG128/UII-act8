//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Inicio extends StatelessWidget {
  static const String routeName = '/inicio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botones"),
        backgroundColor: Color(0xffa19a93),
      ),
      drawer: DrawerMenu(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  print("Elevated Icon Button pressed");
                },
                child: Text("Elevated Button Pressed"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffe8d3ff)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: OutlinedButton(
                onPressed: () {
                  print("Outlined Icon Button pressed");
                },
                child: Text("Outlinde Button Pressed"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {
                  print("Text Icon Button pressed");
                },
                child: Text("Text Button Pressed"),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
