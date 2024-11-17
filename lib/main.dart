import 'package:flutter/material.dart';
import 'widgets/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: const Color.fromARGB(255, 146, 86, 249),),
      home: const  Expenses(),
    ),
  );
}