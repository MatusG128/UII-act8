import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.bubble_chart_outlined,
              text: 'Buttons Text',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.content_copy,
              text: 'Buttons Icons',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.mood_rounded,
              text: 'Buttons Text & Icon',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.flatware_rounded,
              text: 'Buttons Colors',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          _buildDrawerItem(
              icon: Icons.favorite_border,
              text: 'Buttons Magic',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.buttons)}),
          //  _buildDrawerItem(
          //     icon: Icons.border_left_outlined,
          //     text: 'Row Izquierda Vertical',
          //      onTap: () =>
          //         {Navigator.pushReplacementNamed(context, MyApp.row_cinco)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Tipos de Botones",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
