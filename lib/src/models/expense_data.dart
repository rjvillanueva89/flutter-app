class ExpenseData {
  const ExpenseData({
    required this.label,
    required this.amount,
    required this.createdAt,
  });

  final String label;
  final double amount;
  final DateTime createdAt;

  String get formattedAmount {
    return amount.toString();
  }

  String get formattedCreatedAt {
    return createdAt.toString();
  }
}
