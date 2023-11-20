import 'package:expenseapp/pages/expense_list.dart';
import 'package:expenseapp/data/expenses.dart';
import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
   const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  void addNewExpenseList(Expense newAddlistExpense) {
    setState(() {
      expenses.add(newAddlistExpense);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEEBB4D),
        title: const Text("Expense App"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (ctx) => NewExpense( addExpenseList: addNewExpenseList,));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ExpenseList(),
    );
  }
}
