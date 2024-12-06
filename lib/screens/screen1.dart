import 'package:flutter/material.dart';
import '../navegacion/drawer.dart';

class Ejercicio01 extends StatelessWidget {
  const Ejercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 01"),
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ejercicio 01: Cálculo de IMC",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            imc_input(),
            SizedBox(height: 20),
            calcular_btn(context),
          ],
        ),
      ),
    );
  }
}

TextEditingController _peso = TextEditingController();
TextEditingController _altura = TextEditingController();

Widget imc_input() {
  return Column(
    children: [
      TextField(
        controller: _peso,
        decoration: InputDecoration(
          labelText: "Peso en kg",
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      SizedBox(height: 10),
      TextField(
        controller: _altura,
        decoration: InputDecoration(
          labelText: "Altura en metros",
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ],
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
      "Calcular IMC",
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, 
      padding: EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

void calcular(context) {
  double peso = double.parse(_peso.text);
  double altura = double.parse(_altura.text);
  double imc = peso / (altura * altura);

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Resultado IMC"),
        content: Text(
          "Tu IMC es: ${imc.toStringAsFixed(2)}\n" +
              (imc < 18.5
                  ? "Bajo peso"
                  : (imc < 24.9
                      ? "Peso normal"
                      : (imc < 29.9 ? "Sobrepeso" : "Obesidad"))),
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

