import 'package:first_app/src/models/expense_data.dart';
import 'package:flutter/material.dart';
import 'package:zod_validation/zod_validation.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _formKey = GlobalKey<FormState>();
  final _formValues = {};
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();

    super.dispose();
  }

  void _openDatePicker() async {
    FocusScope.of(context).requestFocus(FocusNode());

    final now = DateTime.now();
    final minDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: minDate,
      lastDate: now,
    );

    if (pickedDate == null) return;

    setState(() {
      _dateController.text = formatter.format(pickedDate);
    });
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_formValues);
    }
  }

  @override
  Widget build(BuildContext context) {
    final categoryItems = Category.values
        .map((category) => DropdownMenuItem(
              value: category,
              child: Text(category.name.toUpperCase()),
            ))
        .toList();

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              maxLength: 50,
              decoration: const InputDecoration(
                labelText: "Label",
              ),
              validator: Zod().required("This field is required").build,
              onSaved: (value) => _formValues["label"] = value,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixText: '\$ ',
                      labelText: "Amount",
                    ),
                    validator: Zod().required("This field is required").build,
                    onSaved: (value) => _formValues["amount"] = value,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFormField(
                    controller: _dateController,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month),
                      labelText: "Date",
                    ),
                    onTap: _openDatePicker,
                    validator: Zod().required("This field is required").build,
                    onSaved: (value) => _formValues["createdAt"] = value,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      labelText: "Category",
                    ),
                    items: categoryItems,
                    onChanged: (value) {},
                    validator: Zod().required("This field is required").build,
                    onSaved: (value) => _formValues["category"] = value,
                    isExpanded: true,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                const SizedBox(width: 15),
                FilledButton(
                  onPressed: _handleSubmit,
                  child: const Text("Save"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
