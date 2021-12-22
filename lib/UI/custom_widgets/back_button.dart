import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        height: 30.h,
        width: 30.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 20,
              offset: Offset(0, 10), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
