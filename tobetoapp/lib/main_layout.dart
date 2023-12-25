import 'package:flutter/material.dart';
import 'package:tobeto_app/widget/drawer.dart'; // Dosya yolu doğru olduğundan emin olun

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(child: child),
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: child,
    );
  }
}
