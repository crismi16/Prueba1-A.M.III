import 'package:flutter/material.dart';
import '../navegacion/drawer.dart';

class Ejercicio02 extends StatelessWidget {
  const Ejercicio02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 02"),
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ejercicio 02: Cálculo de Distancia",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            velocidad_input(),
            SizedBox(height: 20),
            calcular_btn(context),
          ],
        ),
      ),
    );
  }
}

TextEditingController _velocidad = TextEditingController();

Widget velocidad_input() {
  return TextField(
    controller: _velocidad,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: "Velocidad en m/s",
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white,
    ),
  );
}

Widget calcular_btn(context) {
  return ElevatedButton.icon(
    onPressed: () => calcular(context),
    icon: Icon(
      Icons.calculate_rounded,
      size: 30,
      color: Colors.white,
    ),
    label: Text(
      "Calcular Distancia",
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor:Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

void calcular(context) {
  double velocidad = double.parse(_velocidad.text);
  double distancia = velocidad * 100; // tiempo fijo de 100 segundos

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Resultado Distancia"),
        content: Text(
          "La distancia recorrida es: ${distancia.toStringAsFixed(2)} metros",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "Aceptar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
    },
  );
}
