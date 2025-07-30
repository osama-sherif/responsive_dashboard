import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
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
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
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
