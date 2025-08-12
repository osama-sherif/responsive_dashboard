import 'package:adaptive_dashboard/models/transaction_history_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});
  final TransactionHistoryItemModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          item.title,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: const Color(0xFF064061)),
        ),
        subtitle: Text(
          item.subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          item.amount,
          style: AppStyles.styleSemiBold24(context).copyWith(
            color: item.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
