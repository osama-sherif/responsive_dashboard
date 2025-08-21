import 'package:adaptive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dashboard/views/widgets/my_card_and_income_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndIncomeSection(),
        ],
      ),
    );
  }
}
