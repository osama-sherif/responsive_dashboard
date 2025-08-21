import 'package:adaptive_dashboard/utils/size_config.dart';
import 'package:adaptive_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:adaptive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:adaptive_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:adaptive_dashboard/views/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? CustomDrawerSection()
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayoutBuilder(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
