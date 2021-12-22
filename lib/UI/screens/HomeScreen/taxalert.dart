import 'dart:ui';

import 'package:carappui/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxAlert extends StatefulWidget {
  @override
  _TaxAlertState createState() => _TaxAlertState();
}

class _TaxAlertState extends State<TaxAlert> {
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
                  "assets/icons/taxalert.png",
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
                      FittedBox(
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Vehicle Tax Valid Until",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "1 Jul 2022",
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
              "242 Days Remaining",
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
