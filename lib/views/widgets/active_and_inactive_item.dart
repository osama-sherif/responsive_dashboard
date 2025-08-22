import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.itemModel});

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(itemModel.title, style: AppStyles.styleRegular16(context)),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.itemModel});

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(itemModel.title, style: AppStyles.styleBold16(context)),
      ),
      trailing: Container(width: 3.27, color: Color(0xFF4EB7F2)),
    );
  }
}
