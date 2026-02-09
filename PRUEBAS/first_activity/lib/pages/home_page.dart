import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [Text("hijo 1"), Text("hijo 2"), Text("hijo 3")],
          ),
        ),
      ),
    );
  }
}
