import 'package:adaptive_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_dashboard/views/widgets/selected_and_non_selected_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItem,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItem;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpesesItem(allExpensesItem: allExpensesItem)
        : NonSelectedAllExpesesItem(allExpensesItem: allExpensesItem);
  }
}
