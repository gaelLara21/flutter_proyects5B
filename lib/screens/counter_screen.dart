import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Colors.pink,
    fontWeight: FontWeight.bold,
  );

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
        centerTitle: true,
        elevation: 5.2,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 7, 228, 99),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        decrease: decrementar,
        increase: incrementar,
        reset: reiniciar,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustomFloatingActionButton({
    super.key,
    required this.increase,
    required this.decrease,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decrease(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => reset(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          onPressed: () => increase(),
          backgroundColor: const Color.fromARGB(255, 3, 21, 52),
          foregroundColor: const Color.fromARGB(255, 234, 184, 5),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
