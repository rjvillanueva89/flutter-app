import 'package:first_app/src/widgets/expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expense Tracker App",
      home: Expenses(),
    );
  }
}
