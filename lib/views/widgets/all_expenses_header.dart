import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

class CustomHeaderWithRangeOption extends StatelessWidget {
  const CustomHeaderWithRangeOption({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
