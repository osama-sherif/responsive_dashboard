import 'package:adaptive_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsRow extends StatefulWidget {
  const AllExpensesItemsRow({super.key});

  @override
  State<AllExpensesItemsRow> createState() => _AllExpensesItemsRowState();
}

class _AllExpensesItemsRowState extends State<AllExpensesItemsRow> {
  final List<AllExpensesItemModel> allExpensesItems = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItems.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (itemIndex != index) {
                setState(() {
                  itemIndex = index;
                });
              }
            },
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: index == 1 ? 12 : 0,
              ),
              child: AllExpensesItem(
                allExpensesItem: item,
                isSelected: itemIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
