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
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 252, 252, 252),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/tobeto-logo.png', width: 150, height: 150),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ListTile(
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Değerlendirmeler'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profilim'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Katalog'),
              onTap: () {
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title: const Text('Takvim'),
              onTap: () {
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title: const Row(               
                children: [
                  Text(
                    'Tobeto',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 2), 
                  Icon(Icons.home),
                ],
              ),
              onTap: () {
                Navigator.pop(context); 
              },
            ),
            const SizedBox(height: 100), 
            ListTile(
              title: const Text('Kullanıcı Adı ve Soyadı'), 
              onTap: () {               
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: widget.child,
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: const MainLayout(
        child: LoginPage(),
      ),
    ),
  );
}
