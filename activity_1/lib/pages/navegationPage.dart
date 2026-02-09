import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1546519638-68e109498ffc?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9uZG8lMjBkZSUyMHBhbnRhbGxhJTIwZGUlMjBiYWxvbmNlc3RvfGVufDB8fDB8fHww',
              ),
              Text(
                'HISTORIA DEL BALONCESTO',
                style: TextStyle(color: const Color.fromARGB(255, 121, 51, 1)),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Icon(
                    Icons.home,
                    color: const Color.fromARGB(255, 121, 51, 1),
                  ),
                  Icon(
                    Icons.search,
                    color: const Color.fromARGB(255, 121, 51, 1),
                  ),
                  Icon(
                    Icons.person,
                    color: const Color.fromARGB(255, 121, 51, 1),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Flexible(
                    flex: 100,
                    child: ColoredBox(
                      color: const Color.fromARGB(255, 241, 206, 170),
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            "El baloncesto nació en 1891 cuando el profesor James Naismith clavó dos cestas de melocotones en un gimnasio de Massachusetts para que sus alumnos jugaran bajo techo durante el invierno. En esos primeros partidos se usaba un balón de fútbol y las cestas no tenían agujero, por lo que el juego se detenía cada vez que alguien anotaba para recuperar la pelota con una escalera. Con el tiempo, el deporte evolucionó: se abrieron las redes, se permitió rebotar el balón mientras se corría y se creó la NBA, que profesionalizó el juego. En los años 80 y 90, gracias a figuras como Michael Jordan, el baloncesto se convirtió en un fenómeno mundial de masas y moda. Hoy es un espectáculo global y veloz donde la puntería desde la línea de triples y el atletismo de jugadores de todo el mundo son los grandes protagonistas.",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 121, 51, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Regresa a Pantalla A
                },
                child: const Text('Volver a la home page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
