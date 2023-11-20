import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';

// 10:05
class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key? key}) : super(key: key);
  final Expense expense;
  Color getCategoryColor(Category category) {
    switch (category) {
      case Category.food:
        return Color(0xFFBEADFA);
      case Category.education:
        return Color(0xFF99B080);
      case Category.travel:
        return Color(0xFFF9B572);
      case Category.work:
        return Color(0xFFEF9595);
      default:
        return Color(0xFF96B6C5);
    }
  }

  @override
  Widget build(BuildContext context) {
     final itemColor = getCategoryColor(expense.category);

    return Card(
      color: itemColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child:  
        Row(
        children: [
          Icon(categoryIcons[expense.category], size: 30,color: Colors.black,),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(expense.formattedDate),
              ],
            ),
          ),
          Text(
            "${expense.price.toStringAsFixed(2)} ₺",
            style: TextStyle( fontSize: 18),
          ),
        ],
      ),
      ),
    );
  }
}