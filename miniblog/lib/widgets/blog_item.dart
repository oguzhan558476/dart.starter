import 'package:flutter/material.dart';
import 'package:miniblog/models/blog.dart';
import 'package:miniblog/screens/blog_detail.dart'; // Yeni eklenen dosya

class BlogItem extends StatelessWidget {
  final Blog blog;

  const BlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(id: blog.id ?? ''),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4 / 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: Center(child: Image.network(blog.thumbnail ?? '')),
                ),
              ),
              ListTile(
                title: Text(blog.title ?? ''),
                subtitle: Text(blog.author ?? ''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
