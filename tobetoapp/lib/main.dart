import 'package:flutter/material.dart';
import 'package:tobetoapp/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Renklerin tanımlanması
  final Color primaryColor = Color(0xFF9833FF); // Tobeto primary rengi
  final Color backgroundColor = Color(0xFFFFFFFF); // Tobeto background rengi

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TobetoApp',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        // Diğer temel özellikler burada tanımlanabilir
      ),
      home: LoginPage(), // Uygulama başladığında gösterilecek sayfa
    );
  }
}
