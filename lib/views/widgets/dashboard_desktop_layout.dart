import 'package:adaptive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';

import 'package:adaptive_dashboard/views/widgets/my_card_and_income_section.dart';

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
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(flex: 2, child: MyCardAndIncomeSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
