import 'package:carappui/UI/custom_widgets/Profile/custom_detail.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

bool status = false;

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: BackButtonContainer(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Stack(
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    // color: ,
                    boxShadow: [
                      // BoxShadow(
                      //   spreadRadius: 2,
                      //   blurRadius: 5,
                      //   offset: Offset(2, 5), // changes position of shadow
                      // ),
                    ],
                  ),
                  child: Image.asset('assets/images/profilepagepic.png'),
                ),
                // Container(
                //   height: 100.h,
                //   width: 100.w,
                //   child: Image.asset('assets/images/profile.png'),
                // ),
                Positioned(
                  top: 70,
                  left: 70,
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                        border: Border.all(
                            width: 2, color: greyColor.withOpacity(0.3))),
                    child: SvgPicture.asset("assets/icons/camera.svg"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 390.h,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(10, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.w,
                      ),
                      Row(
                        children: [
                          Text(
                            "ACCOUNT",
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
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.w,
                      ),
                      ImageIcon(
                        AssetImage(
                          "assets/icons/person.png",
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text(
                        "Log In With Face ID",
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlutterSwitch(
                            width: 26.0,
                            height: 15.0,
                            valueFontSize: 12.0,
                            toggleSize: 15.0,
                            toggleColor: baseColor,
                            padding: 1,
                            value: status,
                            activeColor: switchactiveColor,
                            inactiveColor: switchactiveColor,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      ),

                      // SwitchScreen(),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomDetail(
                    imgURL: 'assets/icons/wallet.png',
                    heading: "YOUR PAYMENT DETAILS",
                    title: "Update Payment Card",
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomDetail(
                    imgURL: 'assets/icons/messages.png',
                    heading: "SUPPORT",
                    title: "Messages",
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    children: [
                      CustomDetail(
                        imgURL: 'assets/icons/tos.png',
                        heading: "LEGAL",
                        title: "Terms and Conditions",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                "assets/icons/privacy.png",
                              ),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Text(
                              "Privacy Policy",
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
                  ),

                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
