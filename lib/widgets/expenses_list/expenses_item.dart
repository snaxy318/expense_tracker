import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense,{super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding:(
        const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        )
      ),
      child: Card(
        child: Text(expense.title),
      ),
    );
  }
}