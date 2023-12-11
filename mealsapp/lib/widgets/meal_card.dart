import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/meal_details.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
        },
         child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                meal.name,
                style: const TextStyle(
                  fontSize: 20, // Metin boyutunu 20 olarak belirledik
                  fontWeight: FontWeight.bold, // Kalın font ağırlığı
                  // Diğer metin stilleri de buraya eklenebilir
                ),
              ),
            ],
          ),
      ),
      ),
    );
  }
}