import 'package:first_app/src/widgets/expense_tracker/dashboard.dart';
import 'package:flutter/material.dart';

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expense Tracker App",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: _AppBar(),
        ),
        body: Dashboard(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      height: double.infinity,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.purple.shade900,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ExpenseTracker",
            style: TextStyle(
              color: Colors.deepPurple.shade100,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.deepPurple.shade100,
            ),
          )
        ],
      ),
    );
  }
}
