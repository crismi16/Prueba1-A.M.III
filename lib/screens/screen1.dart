import 'package:flutter/material.dart';

class Ejercicio01 extends StatefulWidget {
  @override
  _Ejercicio01State createState() => _Ejercicio01State();
}

class _Ejercicio01State extends State<Ejercicio01> {
  final _alturaController = TextEditingController();
  final _pesoController = TextEditingController();
  String _resultado = '';

  void calcularIMC() {
    double altura = double.tryParse(_alturaController.text) ?? 0.0;
    double peso = double.tryParse(_pesoController.text) ?? 0.0;

    if (altura > 0 && peso > 0) {
      double imc = peso / (altura * altura);
      String interpretacion;

      if (imc < 18.5) {
        interpretacion = 'Bajo peso';
      } else if (imc < 25) {
        interpretacion = 'Peso normal';
      } else if (imc < 30) {
        interpretacion = 'Sobrepeso';
      } else {
        interpretacion = 'Obesidad';
      }

      setState(() {
        _resultado = 'IMC: ${imc.toStringAsFixed(1)} - $interpretacion';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 01')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _alturaController,
              decoration: InputDecoration(labelText: 'Altura (m)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _pesoController,
              decoration: InputDecoration(labelText: 'Peso (kg)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularIMC,
              child: Text('Calcular IMC'),
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
