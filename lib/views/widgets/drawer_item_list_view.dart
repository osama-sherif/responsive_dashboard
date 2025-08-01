import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemSliverList extends StatefulWidget {
  const DrawerItemSliverList({super.key});

  @override
  State<DrawerItemSliverList> createState() => _DrawerItemSliverListState();
}

class _DrawerItemSliverListState extends State<DrawerItemSliverList> {
  int itemIndex = 0;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transctions'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GestureDetector(
            onTap: () {
              if (itemIndex != index) {
                setState(() {
                  itemIndex = index;
                });
              }
            },
            child: DrawerItem(
              itemModel: items[index],
              isActive: itemIndex == index,
            ),
          ),
        );
      },
    );
  }
}
