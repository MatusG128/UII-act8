//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Contact extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Colors"),
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
                  print("Elevated Icon Button");
                },
                child: Text("Elevated Button"),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff7c695e)),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Color(0xff615346)),
                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Colors.black,
                  )),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: OutlinedButton(
                onPressed: () {
                  print("Outlined Icon Button");
                },
                child: Text("Outlinde Button"),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffa9a9a9)),
                    //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                        ((Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {}
                      return Color(0xff97826e);
                    }))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {
                  print("Text Icon Button");
                },
                child: Text("Text Button"),
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Color(0xff63544a)),
                ),
              ),
            ),
          ],
        ),
      ), // ThiThis trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
