import 'package:first_app/src/widgets/expense_tracker/expense_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // decoration: const BoxDecoration(color: Colors.black),
      width: double.infinity,
      child: const Column(
        children: [
          _Overview(),
          ExpenseList(),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text("Overview"),
    );
  }
}
