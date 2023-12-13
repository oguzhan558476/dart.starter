import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobeto_app/widget/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF9833FF), // Ana renk
          background: Color(0xFFFFFFFF), // Arkaplan rengi
          surface: Color(0xFFFFFFFF), // Yüzey rengi
          onPrimary: Color(0xFFFFFFFF), // Ana renk üzerindeki metin rengi
          onSecondary: Color(0xFF000000), // İkincil renk üzerindeki metin rengi
          secondary: Color(0xFF515151), // İkincil renk
          error: Color(0xFFFE4657), // Hata rengi
          onError: Color(0xFFFE4657), // Hata üzerindeki metin rengi
          onSurface: Color(0xFF9833FF), // Yüzey üzerindeki metin rengi
          onBackground: Color(0xFF000000), // Arkaplan üzerindeki metin rengi
          ),
        textTheme: GoogleFonts.poppinsTextTheme(), // Poppins font ailesini kullanmak için
        ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    ),
  );
}
