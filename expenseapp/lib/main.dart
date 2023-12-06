import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF39A7FF),
      foregroundColor: Color.fromARGB(255, 0, 0, 0),
    ),
    cardTheme: const CardTheme(
      color: Color(0xFF39A7FF), // Özel renk kodunu burada kullandık
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shadowColor: Colors.transparent,
    ),
    textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
   useMaterial3: true,
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.grey,
        foregroundColor: const Color.fromARGB(255, 7, 247, 255)),
    cardTheme: const CardTheme().copyWith(
        color: const Color.fromARGB(255, 7, 255, 234),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18
          ),
          
        ),
  );
}
void main() {
  // Tema kuralları özelden globale doğru önem sırası arz eder.
  runApp(
    MaterialApp(
        theme: AppTheme.lightTheme,
        home: MainPage()
  ),
  );
}

// modelleme => üzerinde çalışılacak yapıların uygulamada nesne haline getirilmesi

// global theme modülleri hazırlamak
// silme işleminde Snackbar gösterilmesi ve undo işleminin kodlanması..