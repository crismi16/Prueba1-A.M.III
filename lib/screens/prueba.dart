import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba')),
      drawer: const AppDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Agregar la imagen en assets
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Nombre del estudiante: Cristian',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                'Usuario de GitHub: CristianDev',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menú', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: const Text('Prueba'),
            onTap: () => Navigator.pushNamed(context, '/prueba'),
          ),
          ListTile(
            title: const Text('Ejercicio01'),
            onTap: () => Navigator.pushNamed(context, '/ejercicio01'),
          ),
          ListTile(
            title: const Text('Ejercicio02'),
            onTap: () => Navigator.pushNamed(context, '/ejercicio02'),
          ),
        ],
      ),
    );
  }
}
