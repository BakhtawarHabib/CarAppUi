import 'dart:ui';

import 'package:carappui/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MotAlert extends StatefulWidget {
  @override
  _MotAlertState createState() => _MotAlertState();
}

class _MotAlertState extends State<MotAlert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      width: 315.w,
      height: 181.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Container(
            width: 315.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Image.asset(
                  "assets/icons/motalert.png",
                  height: 38.h,
                  width: 38.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Container(
                  width: 140.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "MOT Valid Until",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "29 Jan 2022",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 10, 28),
                    child: ImageIcon(
                      AssetImage(
                        "assets/icons/cross.png",
                      ),
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 38.h,
          ),
          Container(
            child: Text(
              "90 Days Remaining",
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}


// import 'package:carappui/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MotAlert extends StatelessWidget {
//   const MotAlert({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 315.w,
//       height: 181.h,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 315.w,
//             height: 70.h,
//           ),
//         ],
//       ),
//     );
//   }
// }
