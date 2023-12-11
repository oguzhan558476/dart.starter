
import 'package:mealsapp/models/tag.dart';
class Meal {
  const Meal(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.imageUrl,
      required this.ingredients,
      required this.recipe,
      this.tags});

  final String id;
  final String categoryId;
  final String name;
  final String imageUrl;
  final String ingredients;
  final String recipe;
  final List<Tag>? tags;
}