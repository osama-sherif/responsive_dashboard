import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,

    this.backgroundColor,
    required this.image,
    this.imageColor,
  });
  final String image;
  final Color? imageColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: backgroundColor ?? const Color(0xFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(Icons.arrow_forward_ios_rounded, color: imageColor),
      ],
    );
  }
}
