import 'package:first_app/src/data/expense.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // decoration: const BoxDecoration(color: Colors.black),
      width: double.infinity,
      child: Column(
        children: [
          const _Overview(),
          _ExpenseItem(
            Expense(
              label: "Item 1",
              amount: 20.00,
              createdAt: DateTime.now(),
            ),
          ),
          _ExpenseItem(
            Expense(
              label: "Item 2",
              amount: 20.00,
              createdAt: DateTime.now(),
            ),
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview();

  @override
  Widget build(BuildContext context) {
    return const Text("overview");
  }
}

class _ExpenseItem extends StatelessWidget {
  const _ExpenseItem(this.data);

  final Expense data;

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
