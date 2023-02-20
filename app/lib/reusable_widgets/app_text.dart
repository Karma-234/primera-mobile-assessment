import 'package:app/core/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidget extends StatelessWidget {
  final String text;
  final double size;
  final double height;
  final Color color;
  final FontWeight weight;
  const MyWidget({
    super.key,
    required this.text,
    this.size = 16,
    this.height = 24,
    this.color = Appcolors.text100,
    this.weight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
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
