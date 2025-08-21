import 'package:adaptive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:adaptive_dashboard/views/widgets/custom_container.dart';
import 'package:adaptive_dashboard/views/widgets/income_section_body.dart';

import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeaderWithRangeOption(title: 'Income'),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
