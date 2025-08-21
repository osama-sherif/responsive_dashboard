import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(aspectRatio: 1, child: PieChart(getChartData())),
    );
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

          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? Colors.black : Colors.white),
          titlePositionPercentageOffset: activeIndex == 0 ? -2 : .5,
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xFF208CC8),
        ),
        PieChartSectionData(
          value: 25,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? Colors.black : Colors.white),
          titlePositionPercentageOffset: activeIndex == 1 ? -2 : .5,
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          value: 20,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? Colors.black : Colors.white),
          titlePositionPercentageOffset: activeIndex == 2 ? -2 : .5,
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xFF064061),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          title: activeIndex == 3 ? 'Other' : '15%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? Colors.black : Colors.white),
          titlePositionPercentageOffset: activeIndex == 3 ? -2 : .5,
          value: 15,
          color: Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
