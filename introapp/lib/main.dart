import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('Hakkında'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            Image(image: AssetImage('lib/images/bradpitt.jpg'), width: 200, height: 300,),
            Text('OĞUZHAN KARAGÜLLE', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black),),
            Text('Tobeto - Mobil Geliştirici - 1A',style: TextStyle(fontSize: 25,color: Colors.black)),
            Text('31.10.2023',style: TextStyle(fontSize: 25,color: Colors.black)),
            
          ] 

          )
        )
      ),
    );
  }
}