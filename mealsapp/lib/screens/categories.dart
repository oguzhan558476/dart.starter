import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealList(
        meals: meals
            .where((element) => element.categoryId == category.id)
            .toList(),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bir kategori seçin")),
      drawer: Drawer( // Side drawer eklemek için drawer özelliğini kullanıyoruz
        elevation: 16.0,
        child: Container(
          width: 100, // Genişlik
          decoration: const BoxDecoration(
            color: Colors.blue, // Renk
            // İsteğe bağlı olarak diğer dekorasyon özelliklerini ekleyebilirsiniz
          ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Yemek Uygulaması',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
             
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              onTap: () {
                // Burada yapılacak işlemler
                Navigator.pop(context); // Drawer'ı kapatarak ana sayfaya dön
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Kategoriler'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapatabilmek için
                // Yeni bir işlem yapmak için buraya kodlar ekleyebilirsiniz
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                // Burada yapılacak işlemler
                Navigator.pop(context); // Drawer'ı kapatarak ana sayfaya dön
              },
            )
            // Buraya başka drawer öğeleri ekleyebilirsiniz
          ],
        ),
      ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 2,
        ),
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
