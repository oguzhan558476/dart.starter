import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _dateSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: "Gider Adı"),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Miktar",
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
              ? Text(
                  "Seçilen Tarih: ${DateFormat('dd/MM/yyyy').format(_dateSelected!)}")
              : const Text("Tarih Seçiniz.."),
          ElevatedButton(
            onPressed: () {
              _girilenDegerleriGoster();
            },
            child: const Text("Kaydet"),
          ),
          _nameController.text.isNotEmpty
              ? Text("Girilen Gider Adı: ${_nameController.text}")
              : Container(),
          _amountController.text.isNotEmpty
              ? Text("Girilen Miktar: ₺${_amountController.text}")
              : Container(),
          _dateSelected != null
              ? Text("Seçilen Tarih: ${DateFormat('dd/MM/yyyy').format(_dateSelected!)}")
              : Container(),
        ],
      ),
    );
  }

  void _girilenDegerleriGoster() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Girilen Değerler"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Gider Adı: ${_nameController.text}"),
              Text("Miktar: ₺${_amountController.text}"),
              _dateSelected != null
                  ? Text("Seçilen Tarih: ${DateFormat('dd/MM/yyyy').format(_dateSelected!)}")
                  : const Text("Tarih seçilmedi"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Kapat"),
            ),
          ],
        );
      },
    );
  }
}
