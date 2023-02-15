
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main(List<String> args) {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
