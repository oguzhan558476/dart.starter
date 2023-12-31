import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:miniblog/blocs/article_bloc/article_bloc.dart';
import 'package:miniblog/blocs/article_bloc/article_event.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage;
  String title = '';
  String content = '';
  String author = '';

  openImagePicker() async {
    XFile? selectedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = selectedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yeni Blog Ekle")),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                if (selectedImage != null)
                  Image.file(File(selectedImage!.path),
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.fitHeight),
                ElevatedButton(
                    onPressed: () {
                      openImagePicker();
                    },
                    child: const Text("Resim Seç")),
                TextFormField(
                  decoration:
                      const InputDecoration(label: Text("Blog Başlığı")),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen Başlık Giriniz";
                    }
                    return null;
                  },
                  onSaved: (newValue) => title = newValue!,
                ),
                TextFormField(
                    decoration:
                        const InputDecoration(label: Text("Blog İçeriği")),
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Lütfen İçerik Giriniz";
                      }
                      return null;
                    },
                    onSaved: (newValue) => content = newValue!),
                TextFormField(
                    decoration: const InputDecoration(label: Text("Ad Soyad")),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Lütfen Ad Soyad Giriniz";
                      }
                      return null;
                    },
                    onSaved: (newValue) => author = newValue!),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (selectedImage == null) {
                          // Validasyon hatası göster..
                          return;
                        }
                        // Validasyonlar başarılı
                        _formKey.currentState!.save();
                        context.read<ArticleBloc>().add(AddArticle(
                            title: title,
                            content: content,
                            imagePath: selectedImage!.path,
                            author: author
                            )
                        );
                        Navigator.pop(context, true);
                      }
                    },
                    child: const Text("Gönder"))
              ],
            ),
          )),
    );
  }
}