import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/tag.dart';
import 'package:mealsapp/models/meal.dart';

const categories = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.pink),
  Category(id: "3", name: "Ana Yemekler", color: Colors.yellow),
  Category(id: "4", name: "Tatlılar", color: Colors.red),
];

final List<Tag> tags = [
  const Tag(id: "1", name: "Vegan", color:Colors.purple),
  const Tag(id: "2", name: "Gluten-Free", color:Colors.pink),
  const Tag(id: "3", name: "Low Carb", color:Colors.yellow),
  // Diğer tag'ler
];

final List<Meal>  meals = [
 Meal(
  id: "1",
  categoryId: "1",
  name: "Mercimek Çorbası",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
   tags: [tags[0]],
),
Meal(
  id: "2",
  categoryId: "1",
  name: "Yoğurt Çorbası",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),
Meal(
  id: "3",
  categoryId: "1",
  name: "Kelle Paça",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

  Meal(
      id: "4",
      categoryId: "4",
      name: "Katmer",
      imageUrl: "lib/images/katmer.jpg",
      ingredients: '''
        1 su bardağı ılık süt
        1, 5 çay kaşığı tuz
        Bir çay kaşığı kuru maya
        Yaklaşık 2,5 su bardağı un
      ''',
      recipe: '''
Yufkamızı alıyoruz, tam ortasına 25*25 cm lik alanı kaplayacak şekilde tereyağını sürüp (Ben Gaziantep’te memleketten köyden getirtiyorum, daha da güzel oluyor )
Üzerine fıstığımızı serpiyoruz.
Sonra şekeri eşit miktarda serpiştirip üzerine parça parça sade kaymak koyuyoruz.
Önce dikdörtgen en son kare olacak biçimde katlıyoruz.
Tereyağı sürdüğümüz teflon geniş bir tavada kısık ateşte sürekli kontrol ederek nar gibi kızartıyoruz.
Servis tabağına alıp dilediğimiz gibi dilimleyerek üzerine fıstık ve kaymakta koyup sıcak servis yapıyoruz.

      ''',
    ),
    Meal(
      id: "5",
      categoryId: "4",
      name: "Künefe",
      imageUrl: "lib/images/katmer.jpg",
      ingredients: '''
        1 su bardağı ılık süt
        1, 5 çay kaşığı tuz
        Bir çay kaşığı kuru maya
        Yaklaşık 2,5 su bardağı un
      ''',
      recipe: '''
Yufkamızı alıyoruz, tam ortasına 25*25 cm lik alanı kaplayacak şekilde tereyağını sürüp (Ben Gaziantep’te memleketten köyden getirtiyorum, daha da güzel oluyor )
Üzerine fıstığımızı serpiyoruz.
Sonra şekeri eşit miktarda serpiştirip üzerine parça parça sade kaymak koyuyoruz.
Önce dikdörtgen en son kare olacak biçimde katlıyoruz.
Tereyağı sürdüğümüz teflon geniş bir tavada kısık ateşte sürekli kontrol ederek nar gibi kızartıyoruz.
Servis tabağına alıp dilediğimiz gibi dilimleyerek üzerine fıstık ve kaymakta koyup sıcak servis yapıyoruz.

      ''',
    ),
    Meal(
      id: "6",
      categoryId: "4",
      name: "Baklava",
      imageUrl: "lib/images/katmer.jpg",
      ingredients: '''
        1 su bardağı ılık süt
        1, 5 çay kaşığı tuz
        Bir çay kaşığı kuru maya
        Yaklaşık 2,5 su bardağı un
      ''',
      recipe: '''
Yufkamızı alıyoruz, tam ortasına 25*25 cm lik alanı kaplayacak şekilde tereyağını sürüp (Ben Gaziantep’te memleketten köyden getirtiyorum, daha da güzel oluyor )
Üzerine fıstığımızı serpiyoruz.
Sonra şekeri eşit miktarda serpiştirip üzerine parça parça sade kaymak koyuyoruz.
Önce dikdörtgen en son kare olacak biçimde katlıyoruz.
Tereyağı sürdüğümüz teflon geniş bir tavada kısık ateşte sürekli kontrol ederek nar gibi kızartıyoruz.
Servis tabağına alıp dilediğimiz gibi dilimleyerek üzerine fıstık ve kaymakta koyup sıcak servis yapıyoruz.

      ''',
    ),

    Meal(
  id: "7",
  categoryId: "3",
  name: "Pilav",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

Meal(
  id: "8",
  categoryId: "3",
  name: "Kuru Fasulye",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

Meal(
  id: "9",
  categoryId: "3",
  name: "İskender",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

Meal(
  id: "10",
  categoryId: "2",
  name: "Sigara Böreği",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

Meal(
  id: "11",
  categoryId: "2",
  name: "Falafel",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),

Meal(
  id: "12",
  categoryId: "2",
  name: "Çıtır Mantar",
  imageUrl: "lib/images/mercimek.jpg",
  ingredients: '''
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
Patates, havuç ve soğanın kabuklarını soyup 4'er parçaya bölün. Mercimeklerinizi güzelce yıkayın.Düdüklü tencerenize salça, mercimek ve yağı alın. Biraz kavurun. Ardından sebzeleri, baharat, su ve tuzu ekleyin. Tencerenizin kapağını kapatın. Çorba kaynamaya başlayınca altını kısıp 10-15 dakika daha pişirin. Ardından dikkatli ve kullanım talimatına uygun şekilde tencerenizin kapağını açın. 1-2 dakika beklettikten sonra çorbanızı blenderdan geçirin. Dilerseniz süzdürün. Ardından sıcak sıcak servis edin. Afiyetler olsun!

''',
),
];