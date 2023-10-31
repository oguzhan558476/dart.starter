import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 175, 196),
        appBar: AppBar(
          title: const Text('Hakkında'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            Text('OĞUZHAN KARAGÜLLE', style: TextStyle(fontSize: 35, color: Colors.white),),
            Text('Tobeto - Mobil Geliştirici - 1A',style: TextStyle(fontSize: 25,color: Colors.white)),
            Text('31.10.2023',style: TextStyle(fontSize: 25,color: Colors.white)),
            
          ] 

          )
        )
      ),
    );
  }
}