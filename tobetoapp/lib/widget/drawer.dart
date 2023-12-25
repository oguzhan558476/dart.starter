import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Widget child;

  const AppDrawer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              title: const Text(
              'Ana Sayfa',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                fontStyle: FontStyle.italic, 
                color: Colors.blue, 
              ),
            ),
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
      body: child,
    );
  }
}