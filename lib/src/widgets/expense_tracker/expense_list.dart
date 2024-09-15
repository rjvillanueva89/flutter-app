import 'package:first_app/src/models/expense_data.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({super.key});

  @override
  State<ExpenseList> createState() {
    return _ExpenseList();
  }
}

class _ExpenseList extends State<ExpenseList> {
  List<ExpenseData> expenses = [
    ExpenseData(label: "Item 1", amount: 15, createdAt: DateTime.now()),
    ExpenseData(label: "Item 2", amount: 20, createdAt: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    final list = expenses.map((data) => _ExpenseItem(data)).toList();

    return Column(
      children: [...list],
    );
  }
}

class _ExpenseItem extends StatelessWidget {
  const _ExpenseItem(this.data);

  final ExpenseData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.deepPurple.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.formattedAmount),
              Text(data.formattedCreatedAt)
            ],
          )
        ],
      ),
    );
  }
}
