import 'package:flutter/material.dart';

import 'data_model.dart';

class CashCard extends StatelessWidget {
  const CashCard({super.key, required this.expense});

  final List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense[0].title),
              Row(
                children: [
                  Text('\$${expense[0].amount}'),
                  Spacer(),
                  Icon(categoryIcons[expense[0].category]),
                  Text('${expense[0].date}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
