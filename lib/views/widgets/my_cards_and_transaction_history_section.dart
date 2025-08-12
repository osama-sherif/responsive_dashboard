import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/custom_container.dart';
import 'package:adaptive_dashboard/views/widgets/dots_indicator.dart';
import 'package:adaptive_dashboard/views/widgets/my_card_page_view.dart';
import 'package:adaptive_dashboard/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardsAndTransactionHistorySection extends StatefulWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  State<MyCardsAndTransactionHistorySection> createState() =>
      _MyCardsAndTransactionHistorySectionState();
}

class _MyCardsAndTransactionHistorySectionState
    extends State<MyCardsAndTransactionHistorySection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'My Card',
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: Color(0xFF064061)),
          ),
          const SizedBox(height: 20),
          MyCardPageView(pageController: pageController),
          const SizedBox(height: 20),
          DotsIndicator(currentPageIndex: currentPageIndex),
          const Divider(height: 40, color: Color(0xFFF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
