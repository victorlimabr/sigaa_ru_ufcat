import 'package:flutter/material.dart';
import 'package:sigaa_ru_ufcat/feature/sign_in/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto de Fábrica',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SignInPage(),
    );
  }
}