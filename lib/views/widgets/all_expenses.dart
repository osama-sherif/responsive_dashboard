import 'package:adaptive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:adaptive_dashboard/views/widgets/all_expenses_items_row.dart';
import 'package:adaptive_dashboard/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeaderWithRangeOption(title: 'All Expenses'),
          SizedBox(height: 16),
          AllExpensesItemsRow(),
        ],
      ),
    );
  }
}
