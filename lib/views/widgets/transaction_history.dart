import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            const Expanded(child: SizedBox()),

            Text(
              'See all',
              style: AppStyles.styleRegular16(
                context,
              ).copyWith(color: const Color(0xFF4EB7F2)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const TransactionHistoryListView(),
        // Add your transaction history widget here
      ],
    );
  }
}
