import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/views/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });
  final DrawerItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModel: itemModel)
        : InActiveDrawerItem(itemModel: itemModel);
  }
}
