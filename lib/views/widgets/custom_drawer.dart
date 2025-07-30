import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/drawer_item_list_view.dart';
import 'package:adaptive_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'osama',
            subtitle: '@fakdjf',
          ),
          SizedBox(height: 8),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
