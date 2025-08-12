import 'package:adaptive_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_dashboard/models/user_info_model.dart';
import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/active_and_inactive_item.dart';

import 'package:adaptive_dashboard/views/widgets/drawer_item_list_view.dart';
import 'package:adaptive_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawerSection extends StatefulWidget {
  const CustomDrawerSection({super.key});

  @override
  State<CustomDrawerSection> createState() => _CustomDrawerSectionState();
}

class _CustomDrawerSectionState extends State<CustomDrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  itemModel: DrawerItemModel(
                    image: Assets.imagesSettings,
                    title: 'Settings',
                  ),
                ),

                InActiveDrawerItem(
                  itemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
