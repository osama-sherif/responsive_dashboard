import 'package:adaptive_dashboard/views/widgets/all_expenses.dart';
import 'package:adaptive_dashboard/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
    );
  }
}
