import 'package:flutter/material.dart';

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category});

  // final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}

enum Category {
  travel,
  food,
  mobile,
  work,
}

const categoryIcons = {
  Category.travel: Icons.car_rental_rounded,
  Category.food: Icons.fastfood_rounded,
  Category.mobile: Icons.phone_android_rounded,
  Category.work: Icons.work,
};
