import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButtom extends StatelessWidget {
  final String text;
  SmallButtom({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: baseColor),
        color: baseColor,
        boxShadow: [
          BoxShadow(
            color: baseColor.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: whiteColor,
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
            fontFamily: 'Segoeui',
          ),
        ),
      ),
    );
  }
}
