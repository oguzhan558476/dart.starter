import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/models/tag.dart';
//import 'package:mealsapp/providers/meals_provider.dart';
import 'package:mealsapp/widgets/meal_card.dart';

// Provider'a erişmek isteyen widgetlar
// RiverPod widgetları olmalı.

// StatelessWidget => ConsumerWidget
class MealList extends ConsumerWidget {
  const MealList({Key? key, required this.meals, required this.tags}) : super(key: key);
  final List<Meal> meals;
  final List<Tag> tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final mealsFromState = ref.watch(mealsProvider); // global stateden veri okumak

    Widget widget = ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealCard(meal: meals[index]));

    if (meals.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride hiç bir içerik bulunmamaktadır."),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Yemek Listesi"),
           actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Filtreleme butonuna tıklandığında açılacak dialog veya menü
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // Burada tag'leri listeleyen bir dialog veya menü oluşturabilirsiniz
                  return AlertDialog(
                    title: const Text('Filtrele'),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          // Tag'leri listeleyen bir widget veya ListView.builder buraya eklenebilir
                          // Örnek: Tag'leri listeleyen bir ListView.builder
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: tags.length,
                            itemBuilder: (context, index) {
                              final tag = tags[index];
                              return ListTile(
                                title: Text(tag.name),
                                onTap: () {
                                  // Seçilen tag'a göre filtreleme yapılabilir
                                  // Bu örnekte bir şey yapmıyoruz, sadece dialogu kapatıyoruz
                                  Navigator.of(context).pop();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
        ),
        
        body: widget);
  }
}