import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
