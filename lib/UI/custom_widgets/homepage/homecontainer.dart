import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageContainer extends StatefulWidget {
  String imgURL;
  String? text;
  HomePageContainer({required this.imgURL, required this.text});

  @override
  _HomePageContainerState createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(10, 10), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              child: Image.asset(
                widget.imgURL,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              widget.text!,
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
