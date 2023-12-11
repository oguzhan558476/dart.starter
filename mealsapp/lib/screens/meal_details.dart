import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

// Stateful Widget => ConsumerStatefulWidget
// State => ConsumerState
class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({super.key, required this.meal});
  final Meal meal;

  @override
  ConsumerState<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider); // bir veriyi izlemek,takip etmek

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.meal.name),
        actions: [
          IconButton(
              onPressed: () {
                ref
                    .read(favoriteMealsProvider.notifier)
                    .toggleMealFavorite(widget.meal);  // notifier'i okuyup üzerindeki fonks. çalıştırmak
              },
              icon: Icon(favoriteMeals.contains(widget.meal)
                  ? Icons.favorite
                  : Icons.favorite_border))
        ],
      ),
      body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.meal.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.meal.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'MALZEMELER:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                widget.meal.ingredients,
                style: const TextStyle(fontSize: 16),
              ),
              const Text(
                'YAPILIŞI:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                widget.meal.recipe,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        // Diğer içerikler buraya eklenebilir
      ],
    ),
  ),
    );
  }
}