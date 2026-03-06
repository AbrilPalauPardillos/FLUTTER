import 'package:flutter/material.dart';
import 'information.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _FormPageState();
}

class _FormPageState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 245, 235, 1), // 1r fondo
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 204, 153, 1), // 2º fondo
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),

                  // username
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                      hintText: "USERNAME",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // password
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "PASSWORD",
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Botón Login
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          189,
                          102,
                          15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        final user = _userController.text;
                        final pass = _passwordController.text;

                        if (user == "admin" && pass == "123456789") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Information(),
                            ),
                          );
                        } else {
                          // ERROR: Va a la pantalla de error
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
