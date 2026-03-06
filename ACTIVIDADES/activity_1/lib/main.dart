import 'package:flutter/material.dart';
import 'pages/homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Nombre interno de la app (visible en tareas recientes en Android).
      title: 'VISTA DINAMICA',

      // Oculta la cinta "debug" en la esquina superior derecha.
      debugShowCheckedModeBanner: false,

      // Definición del tema clásico de Material 2 usando primarySwatch.
      // Esto asigna automáticamente tonos del color azul a la app.
      theme: ThemeData(primarySwatch: Colors.orange),

      // Pantalla inicial de la aplicación.
      home: const Homepage(),
    );
  }
}
