import 'package:first_app/src/models/expense_data.dart';
import 'package:first_app/src/widgets/expense_tracker/expense_form.dart';
import 'package:first_app/src/widgets/expense_tracker/expense_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseData> _expenses = [];

  void _addExpense(ExpenseData item) {
    setState(() => _expenses.add(item));
  }

  void _openModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => ExpenseForm(onSubmit: _addExpense),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade700,
        title: Text(
          "ExpenseTracker",
          style: TextStyle(
            color: Colors.deepPurple.shade100,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openModal,
            icon: Icon(
              Icons.add,
              color: Colors.deepPurple.shade100,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const _Overview(),
            ExpenseList(
              items: _expenses,
            ),
          ],
        ),
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
