import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:miniblog/models/blog.dart';
import 'package:http/http.dart' as http;

class BlogDetail extends StatefulWidget {
  final String blogId;

  const BlogDetail({Key? key, required this.blogId}) : super(key: key);

  @override
  _BlogDetailState createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> {
  late Blog _blog = Blog(); // Blog verileri burada tutulacak

  @override
  void initState() {
    super.initState();
    fetchBlogDetails(); // Detayları alma fonksiyonunu çağır
  }

  fetchBlogDetails() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles/${widget.blogId}");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _blog = Blog.fromJson(json.decode(response.body));
      });
    } else {
      // Hata durumu, kullanıcıya bildirilebilir
    }
  }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(_blog.title ?? 'Blog Detayı'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _blog.title ?? '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Container(
                        color: Colors.grey[200], // Örnek arka plan rengi
              padding: EdgeInsets.all(8),
              child: Text(
                _blog.content ?? '',
                style: TextStyle(fontSize: 16),
                )
              ),
              SizedBox(height: 16),
              Text(
                'Yazar: ${_blog.author ?? ''}',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16),
              Text(
                'Ekstra Bilgi: ${_blog.extraInfo ?? ''}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
    }
}
