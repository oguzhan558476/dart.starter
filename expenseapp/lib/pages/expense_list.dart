import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList(this.expenses, this.onRemove, this.undoRemove, {Key? key}) : super(key: key);
  final List<Expense> expenses;
  final void Function(Expense expense) onRemove;
  final void Function(Expense expense) undoRemove;

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  
  Expense? removedExpense;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: Text(
              "Grafik",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.expenses.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(widget.expenses[index]),
                  child: ExpenseItem(widget.expenses[index]),
                  onDismissed: (direction) {
                    setState(() {
                      removedExpense = widget.expenses[index]; // Silinen öğeyi sakla
                      widget.onRemove(widget.expenses[index]);
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Öğe silindi, id: ${removedExpense?.id}"),
                        action: SnackBarAction(
                          label: "Geri Yükle",
                          onPressed: () {
                            setState(() {
                              if (removedExpense != null) {
                                // Geri al butonuna basıldığında silinen öğeyi listeye geri ekle
                                widget.undoRemove(removedExpense!);
                                removedExpense = null; // Geri alındı, null yap
                              }
                            });
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  }
// Topbar eklemek vs..
// Theming
// 10:15