import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final Color primaryColor = Color(0xFF9833FF); 
  final Color backgroundColor = Color(0xFFFFFFFF); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TobetoApp - Giriş'),
        backgroundColor: primaryColor, 
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: primaryColor)),
                ),
                child: Text(
                  'Tobeto',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                child: Text('Giriş'),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
