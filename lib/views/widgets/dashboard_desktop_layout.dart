import 'package:adaptive_dashboard/views/widgets/all_expenses.dart';
import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          child: Column(children: [Expanded(child: AllExpenses())]),
        ),
      ],
    );
  }
}
