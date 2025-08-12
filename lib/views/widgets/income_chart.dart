import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  int activeIndex = -1;
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (event, response) {
          activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xFF208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xFF4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xFF064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          value: 15,
          color: Color(0xFFE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
