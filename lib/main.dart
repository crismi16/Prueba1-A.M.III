import 'package:flutter/material.dart'; 
import 'navegacion/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Prueba(),
    );
  }
}

class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prueba")),
      drawer: DrawerWidget(),
      body: Stack(
        children: [
          // Imagen de fondo en la ventana Prueba
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Cristian Tulmo',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  'crismi16',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
