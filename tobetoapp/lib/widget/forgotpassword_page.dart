import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Şifremi Unuttum'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-posta Adresi',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {              
              },
              child: const Text('Şifremi Sıfırla'),
            ),
          ],
        ),
      ),
    );
  }
}
