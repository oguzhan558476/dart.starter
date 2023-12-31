abstract class ArticleEvent {}

class AddArticle extends ArticleEvent {
  String title;
  String content;
  String author;
  String imagePath;

  AddArticle({required this.title, required this.content, required this.author, required this.imagePath});
}

class FetchArticles extends ArticleEvent {}

class FetchArticleDetail extends ArticleEvent {
  final String id;
  
  FetchArticleDetail({required this.id});
}


class ResetEvent extends ArticleEvent {}


