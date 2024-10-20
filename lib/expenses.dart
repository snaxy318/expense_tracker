import 'package:flutter/material.dart';
import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpesesState();
  }
}

class _ExpesesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title:'App Dev Course',
      amount: 19.99,
      date:DateTime.now(),
      category: Categories.work,
    ),
    Expense(title: 'Movie', amount: 15.69, date: DateTime.now(), category: Categories.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expenses'),
        ],
      ),
    );
  }
}
