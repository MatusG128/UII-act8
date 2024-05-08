import 'package:flutter/material.dart';
import 'package:matus0380/drawer_menu.dart';

class Profile extends StatelessWidget {
  static const String routeName = '/profile';

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
              child: ElevatedButton(
                onPressed: () {
                  print("Elevated Icon Button pressed");
                },
                child: Icon(Icons.home_rounded),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: OutlinedButton(
                onPressed: () {
                  print("Outlined Icon Button pressed");
                },
                child: Icon(Icons.favorite_border_rounded),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {
                  print(
                    "Text Icon Button pressed",
                  );
                },
                child: Icon(
                  Icons.person_2_rounded,
                ),
              ),
            ),
          ],
        ),
      ), // Thi/ This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
