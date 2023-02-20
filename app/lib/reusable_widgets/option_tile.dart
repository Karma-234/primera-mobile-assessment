import 'package:app/core/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'app_text.dart';

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget? suffixChild;
  final Color iconColor;
  const OptionTile({
    super.key,
    required this.icon,
    required this.text,
    this.suffixChild,
    this.iconColor = Appcolors.primary100,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Gap(12.w),
        AppText(text: text),
        const Spacer(),
        suffixChild ?? Gap(2.w),
      ],
    );
  }
}
