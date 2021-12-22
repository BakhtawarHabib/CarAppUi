import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SignInbutton extends StatelessWidget {
  final String centerText;
  final Color buttonBackgroungColor;
  final Color textColor;
  final IconData? icon;
  Widget? routeTo;

  SignInbutton({
    required this.buttonBackgroungColor,
    required this.centerText,
    required this.textColor,
    this.icon,
    this.routeTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 280.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: buttonBackgroungColor),
        color: buttonBackgroungColor,
        boxShadow: [
          BoxShadow(
            color: buttonBackgroungColor.withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 2,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            Spacer(),
            icon == null
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(bottom: 7.0),
                    child: Icon(
                      icon,
                      size: 28,
                      color: whiteColor,
                    ),
                  ),
            SizedBox(
              width: 10.h,
            ),
            Text(
              centerText,
              style: TextStyle(
                color: textColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
