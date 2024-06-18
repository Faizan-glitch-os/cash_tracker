import 'package:flutter/material.dart';

import 'package:cash_tracker/cash_card.dart';
import 'package:cash_tracker/data_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Expense> expensesList = [
    Expense(
        title: 'Mobile Load',
        amount: 20,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash Tracker'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Chart'),
          Expanded(
            child: ListView.builder(
              itemCount: expensesList.length,
              itemBuilder: (context, index) => CashCard(
                expense: expensesList,
              ),
            ),
          )
        ],
      ),
    );
  }
}
