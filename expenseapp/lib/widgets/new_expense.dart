import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // Controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _dateSelected; // Seçilen tarihi tutacak değişken

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: "Expense Name"),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Amount",
              prefixText: "₺",
            ),
          ),
          IconButton(
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2025),
              );

              if (pickedDate != null && pickedDate != _dateSelected) {
                setState(() {
                  _dateSelected = pickedDate;
                });
              }
            },
            icon: const Icon(Icons.calendar_month),
          ),
          _dateSelected != null
              ? Text("Seçilen Tarih: ${_dateSelected!.toLocal()}".split(' ')[0])
              : const Text("Tarih Seçiniz.."),
          ElevatedButton(
            onPressed: () {
              print("Kayıt başarılı: ${_nameController.text}");
              if (_dateSelected != null) {
                print("Seçilen Tarih: $_dateSelected");
              }
            },
            child: const Text("Kaydet"),
          ),
        ],
      ),
    );
  }
}