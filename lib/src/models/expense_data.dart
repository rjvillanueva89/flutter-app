import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { food, travel, misc }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.misc: Icons.file_copy
};

class ExpenseData {
  ExpenseData({
    required this.label,
    required this.amount,
    required this.category,
    required this.createdAt,
  }) : id = uuid.v4();

  final String id;
  final String label;
  final double amount;
  final DateTime createdAt;
  final Category category;

  String get formattedAmount {
    return amount.toStringAsFixed(2);
  }

  String get formattedCreatedAt {
    return formatter.format(createdAt);
  }
}
