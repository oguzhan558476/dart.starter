import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobeto_app/widget/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF9833FF),
          background: Color(0xFFFFFFFF),
          surface: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000), // Burada eksik olan onSecondary'yi ekliyoruz
          secondary: Color(0xFF515151),
          error: Color(0xFFFE4657),
          onError: Color(0xFFFE4657),
          onSurface: Color(0xFF9833FF),
          onBackground: Color(0xFF000000),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(), // Poppins font ailesini kullanmak için
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    ),
  );
}
