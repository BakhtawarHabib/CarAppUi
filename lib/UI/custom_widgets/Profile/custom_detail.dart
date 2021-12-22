import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetail extends StatefulWidget {
  String imgURL;
  String heading;
  String title;

  CustomDetail({
    required this.imgURL,
    required this.heading,
    required this.title,
  });

  @override
  _CustomDetailState createState() => _CustomDetailState();
}

class _CustomDetailState extends State<CustomDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30.w,
            ),
            Row(
              children: [
                Text(
                  widget.heading,
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              ImageIcon(
                AssetImage(
                  widget.imgURL,
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyColor,
                size: 18,
              ),
              // SwitchScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
