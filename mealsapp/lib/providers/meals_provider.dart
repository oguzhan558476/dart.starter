import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:mealsapp/models/meal.dart";

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "1",
        categoryId: "1",
        name: "Mercimek Çorbası",
        imageUrl: "imageUrl",
        ingredients: '''
          MALZEMELER:
              2 su bardağı kırmızı mercimek
              1 adet soğan
              2 yemek kaşığı un
              1 adet havuç
              Yarım yemek kaşığı biber ya da domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz)
              1 tatlı kaşığı tuz
              Yarım çay kaşığı karabiber
              1 çay kaşığı kimyon (isteğe bağlı)
              2 litre sıcak su
              5 yemek kaşığı sıvı yağ
        ''',
        recipe: '''

        '''),
  ];
});