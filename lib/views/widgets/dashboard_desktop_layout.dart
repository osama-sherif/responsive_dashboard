import 'package:adaptive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_dashboard/views/widgets/income_section.dart';
import 'package:adaptive_dashboard/views/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(child: MyCardAndIncomeSection()),
        ),
      ],
    );
  }
}

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
