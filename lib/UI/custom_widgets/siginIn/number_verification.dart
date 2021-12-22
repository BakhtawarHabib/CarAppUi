import 'package:carappui/UI/screens/homepage.dart';
import 'package:carappui/UI/screens/HomeScreen/HomeScreen.dart';
import 'package:carappui/UI/screens/singin_process.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PhoneVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(SignInProcess());
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.close,
                  size: 25,
                  color: blackColor,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: 70.h),
              Text(
                'Confirm Phone Number',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Poppins',
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 0.8.sw,
                child: Text(
                  "Enter 4 digit code you received by SMS"
                  " to confirm your phone number.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: blackColor.withOpacity(0.6),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '7',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text.rich(
                      TextSpan(
                        text: 'Haven’t received code?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: blackColor,
                          fontSize: 13.sp,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                              color: baseColor,
                              fontFamily: 'Poppins',
                              fontSize: 13.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Change phone number",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: blackColor,
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(height: 30.h),
              TextButton(
                onPressed: () {
                  Get.to(
                    HomeScreen2(),
                  );
                },
                child: Container(
                  height: 50.h,
                  width: 315.w,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
