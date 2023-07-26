import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_list.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expenses, {super.key});

  final Expense? expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: Column(
        children: [
          Text(
            expenses!.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                '\$${expenses!.amount.toStringAsFixed(2)}',
              ),
              Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expenses!.category]),
                  SizedBox(
                    width: 8,
                  ),
                  Text(expenses!.formattedDate)
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
