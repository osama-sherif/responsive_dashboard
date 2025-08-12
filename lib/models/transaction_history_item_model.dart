class TransactionHistoryItemModel {
  final String title, subtitle, amount;
  final bool isWithdrawal;

  const TransactionHistoryItemModel({
    required this.isWithdrawal,
    required this.title,
    required this.subtitle,
    required this.amount,
  });
}
