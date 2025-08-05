import 'package:adaptive_dashboard/models/user_info_model.dart';
import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.user});
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(user.image),
        title: Text(user.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(user.subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
