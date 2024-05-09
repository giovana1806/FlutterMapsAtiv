import 'package:flutter/material.dart';
import 'principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Remove the bug banner
      debugShowCheckedModeBanner: false,
      home: const Principal(),
    );
  }
}
