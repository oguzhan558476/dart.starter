import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.amber),
    cardTheme: const CardTheme().copyWith(
        color: Colors.amber,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16
          ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
   useMaterial3: true,
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.amber),
    cardTheme: const CardTheme().copyWith(
        color: Colors.amber,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16
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