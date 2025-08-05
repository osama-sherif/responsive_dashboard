import 'package:adaptive_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xFFAAAAAA)),
        border: buildBorder(),
        fillColor: Color(0xFFFAFAFA),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
