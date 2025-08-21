import 'package:adaptive_dashboard/models/transaction_history_item_model.dart';
import 'package:adaptive_dashboard/views/widgets/transaction_history_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  final List<TransactionHistoryItemModel> items = const [
    TransactionHistoryItemModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
    TransactionHistoryItemModel(
      isWithdrawal: false,
      title: 'Landing Page project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
    ),
    TransactionHistoryItemModel(
      isWithdrawal: false,
      title: 'Juni Mobile App project',
      subtitle: '13 Apr, 2022 ',
      amount: r'$2000',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(item: e)).toList(),
    );
  }
}
