import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';

import 'package:adaptive_dashboard/views/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: MobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
