import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  // Variable para el contador (Punto 6 del PDF)
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      if (_contador > 0) _contador--; // Opcional: evita números negativos
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mismo color de fondo que el Login para mantener coherencia
      backgroundColor: const Color.fromRGBO(255, 245, 235, 1),
      appBar: AppBar(
        title: const Text("HOME PAGE"),
        backgroundColor: const Color.fromRGBO(255, 204, 153, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "¡Bienvenid@ de nuevo!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 50),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/6522/6522516.png',
            ),

            // Visualización del número
            Text(
              '$_contador',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 189, 102, 15),
              ),
            ),

            const SizedBox(height: 30),

            // Botones de control
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: _decrementar,
                  backgroundColor: Colors.redAccent,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 40),
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: _incrementar,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Botón para volver
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cerrar Sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
