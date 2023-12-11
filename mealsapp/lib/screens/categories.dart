import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  // Stful widgetlarda => context globaldir
  // Stless widgetlarda => Sadece build fonksiyonunda context'e erişilebilir.
  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
            meals: meals
                .where((element) => element.categoryId == category.id)
                .toList(),
            tags: tags.toList()
          ))
        );
            
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Bir kategori seçin"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Favorites()));
                },
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: DecorationImage(image: AssetImage("lib/images/mercimek.jpg"),
                
                fit: BoxFit.cover, ), 
              ),
              child: const Text(
                'Yemek Uygulaması',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 136, 69),
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Anasayfa'),
              onTap: () {
                // Anasayfa sayfasına yönlendirme işlevi
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Kategoriler'),
              onTap: () {
                // Kategoriler sayfasına yönlendirme işlevi
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                // Ayarlar sayfasına yönlendirme işlevi
                Navigator.pop(context);
              },
            ),
            // Diğer drawer öğelerini ekleyebilirsiniz
          ],
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final category in categories)
            CategoryCard(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
// LMS => Learning Management System