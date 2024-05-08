//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Movies extends StatelessWidget {
  static const String routeName = '/movies';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Text & Icon"),
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
              child: ElevatedButton.icon(
                  onPressed: () {
                    print("Elevated Icon Button pressed");
                  },
                  icon: Icon(Icons.home_rounded),
                  label: Text("Elevated Home Button")),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: OutlinedButton.icon(
                  onPressed: () {
                    print("Outlined Icon Button pressed");
                  },
                  icon: Icon(Icons.favorite_border_rounded),
                  label: Text("Outlined Home Button")),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton.icon(
                  onPressed: () {
                    print("Text Icon Button pressed");
                  },
                  icon: Icon(Icons.person_2_rounded),
                  label: Text("Text Home Button")),
            ),
          ],
        ),
      ), // Thi// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
