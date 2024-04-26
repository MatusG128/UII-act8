import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Vanya Matus 0380'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("Elevated Button Pressed!");
                  },
                  child: Icon(Icons.home),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Color(0xff1b1b1b),
                      primary: Color(0xffea8ccb),
                      textStyle: TextStyle(fontSize: 25))),
              OutlinedButton(
                  onPressed: () {
                    print("Elevated Button Pressed!");
                  },
                  child: Icon(Icons.favorite),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Color(0xff1b1b1b),
                      primary: Color(0xffe1d77a),
                      textStyle: TextStyle(fontSize: 25))),
              TextButton(
                  onPressed: () {
                    print("Elevated Button Pressed!");
                  },
                  child: Icon(Icons.mood),
                  style: ElevatedButton.styleFrom(
                      onPrimary: Color(0xff1b1b1b),
                      primary: Color(0xff52657e),
                      textStyle: TextStyle(fontSize: 25))),
            ],
          ),
        ));
  }
}
