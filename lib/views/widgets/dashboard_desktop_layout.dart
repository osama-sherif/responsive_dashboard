import 'package:adaptive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_dashboard/views/widgets/my_cards_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(children: [SizedBox(height: 40), MyCardsSection()]),
        ),
      ],
    );
  }
}
