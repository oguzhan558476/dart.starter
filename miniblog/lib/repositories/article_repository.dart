import 'dart:convert';
import 'package:miniblog/blocs/article_bloc/article_event.dart';
import 'package:miniblog/models/blog.dart';
import 'package:http/http.dart' as http;

abstract class AddBlogState {}

class ArticleRepository {
  Future<List<Blog>> fetchAllBlogs() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");
    final response = await http.get(url);
    final List jsonData = json.decode(response.body);
    return jsonData.map((json) => Blog.fromJson(json)).toList();
  }

  Future<Blog> fetchBlogById(String id) async {
    Uri url =
        Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles/" + id);
    final response = await http.get(url);
    final jsonData = json.decode(response.body);
    return Blog.fromJson(jsonData);
  }


addBlog(ArticleEvent event) async* {
    if (event is AddArticle) {
      //yield AddBlogLoading();
      Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");
  var request = http.MultipartRequest("POST", url);

  // Resim dosyası varsa, dosyayı ekleyin
  request.files.add(
    await http.MultipartFile.fromPath(
      "image",
      event.imagePath,
    ),
  );
  // Diğer alanları ekleme
  request.fields['title'] = event.title;
  request.fields['content'] = event.content;
  request.fields['author'] = event.author;
  try {
    final response = await request.send();
    if (response.statusCode == 200) {
      
    }
    else{
      
    }
  } catch (e) {
    // Hata durumunda
   // yield AddBlogFailure();
  }
    }
  }

}