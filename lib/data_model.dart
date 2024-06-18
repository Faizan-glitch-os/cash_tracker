import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

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

const idGenerator = Uuid();
final dateFormatter = DateFormat.yMd();

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = idGenerator.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get FormattedDate {
    return dateFormatter.format(date);
  }
}
