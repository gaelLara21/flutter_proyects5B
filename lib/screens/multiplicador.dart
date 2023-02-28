import 'package:flutter/material.dart';

class Multiplicador extends StatefulWidget {
  const Multiplicador({super.key});

  @override
  State<Multiplicador> createState() => _Multiplicador();
}

class _Multiplicador extends State<Multiplicador> {
  int _num1 = 1;
  int _num2 = 1;
  int _result = 1;

  void _calculateResult() {
    setState(() {
      _result = _num1 * _num2;
    });
  }

  void _incrementNum1() {
    setState(() {
      _num1++;
    });
    _calculateResult();
  }

  void _decrementNum1() {
    setState(() {
      _num1--;
    });
    _calculateResult();
  }

  void _incrementNum2() {
    setState(() {
      _num2++;
    });
    _calculateResult();
  }

  void _decrementNum2() {
    setState(() {
      _num2--;
    });
    _calculateResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplicador'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 225, 250, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum1,
                  icon: Icon(Icons.exposure_minus_1),
                ),
                Text(
                  'Numero 1:'
                  '     '
                  '$_num1',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum1,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum2,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  'Numero 2:'
                  '   '
                  '$_num2',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum2,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Resultado ='
              '  '
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
