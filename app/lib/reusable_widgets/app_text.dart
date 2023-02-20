import 'package:app/core/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final double height;
  final Color color;
  final TextAlign align;
  final FontWeight weight;
  const AppText({
    super.key,
    required this.text,
    this.size = 16,
    this.height = 24,
    this.color = Appcolors.text100,
    this.weight = FontWeight.w400,
    this.align = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size.sp,
        height: size / height,
        color: color,
        fontFamily: 'Satoshi',
        fontWeight: weight,
      ),
    );
  }
}
