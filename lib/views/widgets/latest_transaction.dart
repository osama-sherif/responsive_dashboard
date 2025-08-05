import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/latest_transation_list_view.dart';
import 'package:flutter/material.dart';

class LatesetTransaction extends StatelessWidget {
  const LatesetTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        LatestTransationListView(),
      ],
    );
  }
}
