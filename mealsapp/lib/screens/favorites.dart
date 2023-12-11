import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/providers/favorites_provider.dart';
import 'package:mealsapp/screens/meal_details.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoriler"),
      ),
      body: ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          final meal = favoriteMeals[index];
          return GestureDetector(
            onTap: () {
              // Yemek tarifinin olduğu sayfaya git
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MealDetails(meal: meal),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(meal.name),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    ref.read(favoriteMealsProvider.notifier)
                    .removeMealFavorite(meal);
                    // Burada favorilerden kaldırma işlemini yapabilirsiniz
                    //context.read(favoriteMealsProvider.notifier).removeFromFavorites(meal);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}