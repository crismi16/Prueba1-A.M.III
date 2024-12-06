import 'package:flutter/material.dart';

class Ejercicio02 extends StatefulWidget {
  @override
  _Ejercicio02State createState() => _Ejercicio02State();
}

class _Ejercicio02State extends State<Ejercicio02> {
  final _velocidadController = TextEditingController();
  String _resultado = '';

  void calcularDistancia() {
    double velocidad = double.tryParse(_velocidadController.text) ?? 0.0;

    if (velocidad > 0) {
      double distancia = velocidad * 100; // d = v * t
      setState(() {
        _resultado = 'Distancia: ${distancia.toStringAsFixed(1)} m';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 02')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _velocidadController,
              decoration: InputDecoration(labelText: 'Velocidad (m/s)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularDistancia,
              child: Text('Calcular Distancia'),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
