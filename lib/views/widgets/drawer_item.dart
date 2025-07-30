import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.itemModel});
  final DrawerItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFFFFF),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(itemModel.image),
        title: Text(itemModel.title, style: AppStyles.styleRegular16(context)),
      ),
    );
  }
}
