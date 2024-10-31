import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geometric Area Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          '¡Bienvenido!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validar el ingreso de datos
                if (emailController.text.isNotEmpty &&
                    emailController.text.contains('@')) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MenuScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ingrese un correo válido.')),
                  );
                }
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menú de Opciones')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Figuras Geométricas', style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: const Text('Círculo'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CircleAreaScreen())),
            ),
            ListTile(
              title: const Text('Cuadrado'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SquareAreaScreen())),
            ),
            ListTile(
              title: const Text('Rectángulo'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => RectangleAreaScreen())),
            ),
            ListTile(
              title: const Text('Triángulo'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TriangleAreaScreen())),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Seleccione una figura para calcular su área.')),
    );
  }
}

// Pantallas para calcular áreas de figuras

class CircleAreaScreen extends StatelessWidget {
  final TextEditingController radiusController = TextEditingController();

  CircleAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Área del Círculo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: 'Ingrese el radio'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double radius = double.tryParse(radiusController.text) ?? 0;
                double area = 3.14 * radius * radius;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Área del Círculo'),
                    content: Text('El área es: ${area.toStringAsFixed(2)}'),
                    actions: [
                      TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cerrar')),
                    ],
                  ),
                );
              },
              child: const Text('Calcular área'),
            ),
          ],
        ),
      ),
    );
  }
}

class SquareAreaScreen extends StatelessWidget {
  final TextEditingController sideController = TextEditingController();

  SquareAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Área del Cuadrado')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: sideController,
              decoration: const InputDecoration(labelText: 'Ingrese el lado'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double side = double.tryParse(sideController.text) ?? 0;
                double area = side * side;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Área del Cuadrado'),
                    content: Text('El área es: ${area.toStringAsFixed(2)}'),
                    actions: [
                      TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cerrar')),
                    ],
                  ),
                );
              },
              child: const Text('Calcular área'),
            ),
          ],
        ),
      ),
    );
  }
}

class RectangleAreaScreen extends StatelessWidget {
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();

  RectangleAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Área del Rectángulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: lengthController,
              decoration: const InputDecoration(labelText: 'Ingrese la longitud'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: widthController,
              decoration: const InputDecoration(labelText: 'Ingrese el ancho'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double length = double.tryParse(lengthController.text) ?? 0;
                double width = double.tryParse(widthController.text) ?? 0;
                double area = length * width;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Área del Rectángulo'),
                    content: Text('El área es: ${area.toStringAsFixed(2)}'),
                    actions: [
                      TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cerrar')),
                    ],
                  ),
                );
              },
              child: const Text('Calcular área'),
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleAreaScreen extends StatelessWidget {
  final TextEditingController baseController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  TriangleAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Área del Triángulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: 'Ingrese la base'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: 'Ingrese la altura'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double base = double.tryParse(baseController.text) ?? 0;
                double height = double.tryParse(heightController.text) ?? 0;
                double area = 0.5 * base * height;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Área del Triángulo'),
                    content: Text('El área es: ${area.toStringAsFixed(2)}'),
                    actions: [
                      TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cerrar')),
                    ],
                  ),
                );
              },
              child: const Text('Calcular área'),
            ),
          ],
        ),
      ),
    );
  }
}
