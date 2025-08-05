import 'package:adaptive_dashboard/models/user_info_model.dart';
import 'package:adaptive_dashboard/utils/images.dart';
import 'package:adaptive_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransationListView extends StatelessWidget {
  const LatestTransationListView({super.key});
  final List<UserInfoModel> users = const [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: users
              .map((e) => IntrinsicWidth(child: UserInfoListTile(user: e)))
              .toList(),
        ),
      ),
      //
      // ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: users.length,
      //   itemBuilder: (context, index) {
      //     return IntrinsicWidth(child: UserInfoListTile(user: users[index]));
      //   },
      // ),
    );
  }
}
