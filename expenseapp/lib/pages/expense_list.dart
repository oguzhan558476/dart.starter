import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({Key? key}) : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  final List<Expense> expenses = [
    Expense(
      name: "Pizza",
      price: 100,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      name: "Flutter Udemy Course",
      price: 250,
      date: DateTime.now(),
      category: Category.education,
    ),
    Expense(
      name: "Karadeniz Turu",
      price: 1200,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      name: "İş Güvenlik Gereçleri",
      price: 600,
      date: DateTime.now(),
      category: Category.work,
    ),
  ]; // firebase, veritabanı

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense List'), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
              child: Text("Grafik"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: expenses.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: const Color.fromARGB(58, 5, 64, 112), 
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            expenses[index].name,
                            style: const TextStyle(
                              color: Colors.white, 
                              fontSize: 30.0, 
                              overflow: TextOverflow.ellipsis, 
                            ),
                          ),
                          const SizedBox(width: 25.0), 
                          Text(
                            expenses[index].price.toString(),
                            style: const TextStyle(
                              color: Colors.white, 
                              fontSize: 20.0, 
                              overflow: TextOverflow.ellipsis, 
                            ),
                          ),
                        ],
                      ),
                   ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}