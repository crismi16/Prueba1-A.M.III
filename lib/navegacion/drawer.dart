import 'package:flutter/material.dart'; 
import 'package:flutter_prueba1/main.dart';
import 'package:flutter_prueba1/screens/screen1.dart';
import 'package:flutter_prueba1/screens/screen2.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero, 
            child: Container(
              height: 50, 
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Menú de Navegación',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Prueba'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Prueba()));
            },
          ),
          ListTile(
            title: Text('Ejercicio 01'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Ejercicio01()));
            },
          ),
          ListTile(
            title: Text('Ejercicio 02'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Ejercicio02()));
            },
          ),
        ],
      ),
    );
  }
}
