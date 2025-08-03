import 'package:adaptive_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:adaptive_dashboard/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class NonSelectedAllExpesesItem extends StatelessWidget {
  const NonSelectedAllExpesesItem({super.key, required this.allExpensesItem});

  final AllExpensesItemModel allExpensesItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: .5, color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItem.image,
            imageColor: Color(0xFF4EB7F2),
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItem.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          SizedBox(height: 8),
          Text(allExpensesItem.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16),
          Text(
            maxLines: 1,
            allExpensesItem.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class SelectedAllExpesesItem extends StatelessWidget {
  const SelectedAllExpesesItem({super.key, required this.allExpensesItem});

  final AllExpensesItemModel allExpensesItem;
  final Color selectedColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: .5, color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            backgroundColor: Colors.white.withValues(
              alpha: 0.10000000149011612,
            ),

            image: allExpensesItem.image,
            imageColor: selectedColor,
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItem.title,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: selectedColor),
          ),
          SizedBox(height: 8),
          Text(
            allExpensesItem.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: selectedColor),
          ),
          SizedBox(height: 16),
          Text(
            maxLines: 1,
            allExpensesItem.price,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: selectedColor),
          ),
        ],
      ),
    );
  }
}
