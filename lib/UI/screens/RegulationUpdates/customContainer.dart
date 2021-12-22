import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatefulWidget {
  String imageURL;
  String tile;
  String description;

  CustomContainer({
    required this.imageURL,
    required this.tile,
    required this.description,
  });

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            widget.imageURL,
            height: 154.h,
            width: 277.w,
          ),
          SizedBox(
            height: 13.h,
          ),
          Row(
            children: [
              SizedBox(width: 30.w),
              Text(
                widget.tile,
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              SizedBox(width: 30.w),
              Text(
                widget.description,
                style: TextStyle(
                  color: blackColor.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
