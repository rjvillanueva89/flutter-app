import 'package:flutter/material.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() {
    return _ExpenseFormState();
  }
}

class _ExpenseFormState extends State<ExpenseForm> {
  Map<String, Object> formValues = {};

  @override
  Widget build(BuildContext context) {
    void saveTitle(String value) {
      formValues["label"] = value;
    }

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            onChanged: saveTitle,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("Label"),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(formValues);
                },
                child: const Text("Save"),
              )
            ],
          )
        ],
      ),
    );
  }
}
