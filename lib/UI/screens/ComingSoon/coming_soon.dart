import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/UI/custom_widgets/general_button.dart';
import 'package:carappui/UI/screens/HomeScreen/HomeScreen.dart';
import 'package:carappui/UI/screens/homepage.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              BackButtonContainer(),
              SizedBox(
                width: 70.w,
              ),
              Text(
                'Coming Soon',
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          Image.asset("assets/images/comingsoon/comingsoon.png"),
          SizedBox(
            width: 70.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40.w),
            child: Text(
              "We’re working hard behind the "
              "scenes to make this feature available.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60.w),
            child: Text(
              "We will notify you when this feature" " is ready.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  HomeScreen2(),
                );
              },
              child: Container(
                height: 55.h,
                width: 277.w,
                decoration: BoxDecoration(
                  color: darkBlueColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Text(
                    "Back To Home",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
