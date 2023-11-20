import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key, required this.addExpenseList}) : super(key: key);
  
  final Function(Expense) addExpenseList;

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

//11:10
class _NewExpenseState extends State<NewExpense> {
  // Controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.work;

  void _openDatePicker() async {
    // DatePicker açmak.. ✅
    // DatePicker'dan gelen değeri Text olarak yazdırmak
    // built-in function

    // sync => bir işlem bitmeden diğerinin başlamadığı yapılar
    // async => alt satıra geçmek için işlemin bitmesini beklemezler // await
    DateTime now = DateTime.now();
    DateTime oneYearAgo = DateTime(now.year - 1, now.month, now.day);

    // 1 yıl öncesi ve bugün arasında kısıtlama
    // then => async bir işlemin geri dönüş sağladığı anda çalışacak bloğunu tanımlar.
    // showDatePicker(
    //         context: context,
    //         initialDate: now,
    //         firstDate: oneYearAgo,
    //         lastDate: now)
    //     .then((value) {
    //   print(value);
    // });

    // await => ilgili async işlemini bekle

    // if(_selectedDate==null)
    //    time=now
    // else
    //   time=_selectedDate
    // 10:15
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate == null
            ? now
            : _selectedDate!, // eğer seçili tarih varsa onu kullan, yoksa günün tarihini kullan..
        firstDate: oneYearAgo,
        lastDate: now);

    setState(() {
      _selectedDate = selectedDate;
    });
  }

  void _addNewExpense() {
  final amount = double.tryParse(_amountController.text);

  if (amount == null ||
      amount < 0 ||
      _nameController.text.isEmpty ||
      _selectedDate == null) {
    // Hatalı durum
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text("Validation Error"),
          content: const Text("Please fill all blank areas."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  } else {
    // Geçerli bir değer
    final newExpense = Expense(
      name: _nameController.text,
      price: amount,
      date: _selectedDate!,
      category: _selectedCategory,
    );

    // Bu yeni harcama öğesini listeye ekleyebilirsiniz.
    // Örnek olarak bir harcama listesi tuttuğunuzu varsayalım.
    // expensesList.add(newExpense);
    widget.addExpenseList(newExpense);

    // Ekleme işlemi bittikten sonra ekrandan çıkabilirsiniz.
    Navigator.pop(context);
  }
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Expense Name")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Amount"), prefixText: "₺"),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => _openDatePicker(),
                        icon: const Icon(Icons.calendar_month)),
                    // Ternary Operator
                    Text(_selectedDate == null
                        ? "Tarih Seçiniz"
                        : DateFormat.yMd().format(_selectedDate!)),
                  ],
                ),
              ),
            ],
          ), // seçilen tarihi formatlayarak yazdırmak..
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              DropdownButton(
                  value: _selectedCategory,
                  items: Category.values.map((category) {
                    return DropdownMenuItem(
                        value: category, child: Text(category.name.toString()));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) _selectedCategory = value;
                    });
                  })
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Vazgeç")),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    _addNewExpense();
                  },
                  child: const Text("Kaydet")),
            ],
          )
        ],
      ),
    );
  }
}