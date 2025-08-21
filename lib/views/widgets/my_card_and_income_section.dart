import 'package:adaptive_dashboard/views/widgets/income_section.dart';
import 'package:adaptive_dashboard/views/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        MyCardsAndTransactionHistorySection(),
        SizedBox(height: 24),
        IncomeSection(),
      ],
    );
  }
}
