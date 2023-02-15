import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre de la app'),
        elevation: 10.2,
        backgroundColor: const Color.fromARGB(255, 14, 3, 85),
      ),
      backgroundColor: const Color.fromARGB(255, 141, 155, 236),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de taps',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            {
              contador++;
              print('Presionaste el boton');
            }
          },
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.add)),
    );
  }
}
