import 'package:first_app/src/models/expense_data.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.items});

  final List<ExpenseData> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) => _ExpenseItem(items[index]),
      ),
    );
  }
}

class _ExpenseItem extends StatelessWidget {
  const _ExpenseItem(this.data);

  final ExpenseData data;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Colors.deepPurple.shade100,
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(15),
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
                Text('\$${data.formattedAmount}'),
                Row(
                  children: [
                    Icon(categoryIcons[data.category]),
                    const SizedBox(width: 10),
                    Text(data.formattedCreatedAt),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
