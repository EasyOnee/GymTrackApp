import 'package:flutter/material.dart';
import 'package:gymapp/login_page.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GymTrack",
      theme: ThemeData(primaryColor: const Color(0xFF71BBD9)), // Establecer el color primario en hexadecimal #71BBD9
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


