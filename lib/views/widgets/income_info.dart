import 'package:adaptive_dashboard/models/income_info_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeInfoListView extends StatelessWidget {
  const IncomeInfoListView({super.key});
  static const items = [
    IncomeInfoItemModel(
      title: 'Design service',
      percent: '40%',
      color: Color(0xFF208CC8),
    ),
    IncomeInfoItemModel(
      title: 'Design product ',
      percent: '25%',
      color: Color(0xFF4EB7F2),
    ),
    IncomeInfoItemModel(
      title: 'Product royalti',
      percent: '20%',
      color: Color(0xFF064061),
    ),
    IncomeInfoItemModel(
      title: 'Other',
      percent: '15%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeInfoItem(infoItemModel: items[index]);
      },
    );
  }
}

class IncomeInfoItem extends StatelessWidget {
  const IncomeInfoItem({super.key, required this.infoItemModel});
  final IncomeInfoItemModel infoItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: infoItemModel.color,
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          infoItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),

      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          infoItemModel.percent,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
