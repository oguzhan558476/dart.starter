// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobeto_app/widget/login_page.dart';
class MainLayout extends StatefulWidget {
  final Widget child;
  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: widget.child,
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
  colorScheme: const ColorScheme.light(),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
    // Diğer metin stilleri...headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          headline3: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          subtitle1: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          subtitle2: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: 16),
          bodyText2: TextStyle(fontSize: 14),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          caption: TextStyle(fontSize: 12),
          overline: TextStyle(fontSize: 10),
  ),
),
      darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: const MainLayout(
        child: LoginPage(),
      ),
    ),
  );
}
