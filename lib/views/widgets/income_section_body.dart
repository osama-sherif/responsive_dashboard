import 'package:adaptive_dashboard/utils/size_config.dart';
import 'package:adaptive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:adaptive_dashboard/views/widgets/income_chart.dart';
import 'package:adaptive_dashboard/views/widgets/income_info.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktop && width < 1750
        ? DetailedIncomeChart()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 24),
              Expanded(flex: 2, child: IncomeInfoListView()),
            ],
          );
  }
}
