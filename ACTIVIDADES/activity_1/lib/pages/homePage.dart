import 'package:flutter/material.dart';
import 'navegationPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar es la barra superior típica de Material Design.
      appBar: AppBar(
        title: Text('Mi primera app'),
        backgroundColor: Color.fromRGBO(255, 204, 153, 1),
      ),

      // El cuerpo de esta pantalla es un texto ce  ntrado.
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 189, 102, 15), // Fondo del Row
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Flexible(
                    flex: 2,
                    child: ColoredBox(
                      color: const Color.fromARGB(255, 189, 102, 15),
                      child: SizedBox(
                        height: 40, // Altura fija de la "barra" azul
                        child: Center(
                          child: Text(
                            'My First APP',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const NavigationPage(),
                        ),
                      );
                    },
                    child: const Text('Ir a la navegación'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
