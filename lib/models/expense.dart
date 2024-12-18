import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Categories { food, travel, leisure, work }

const categoryIcons = {
  Categories.food: Icons.lunch_dining,
  Categories.travel: Icons.flight_takeoff,
  Categories.leisure: Icons.movie,
  Categories.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Categories category;

  String get formattedDate {
    //It is a getter
    return formatter.format(date);
  }
}

class ExpenseBucket {
  ExpenseBucket({
    required this.categories,
    required this.expenses,
  });

  ExpenseBucket.toCategory(List<Expense> allExpenses, this.categories)
      : expenses = allExpenses
            .where((expense) => expense.category == categories)
            .toList();

  final Categories categories;
  final List<Expense> expenses;

  double get totalExpense {
    double sum = 0;

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
