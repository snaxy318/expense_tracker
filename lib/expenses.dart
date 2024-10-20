import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpesesState();
  }
}

class _ExpesesState extends State<Expenses> {
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
