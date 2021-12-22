import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 83.h,
        width: 315.w,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: FittedBox(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Container(
                  height: 65.h,
                  width: 98.w,
                  decoration: BoxDecoration(
                    color: blueColor.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      'Logo',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: darkBlueColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110.w,
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'Add Text',
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Add Text',
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Add Text',
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: baseColor,
                  size: 17.sp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
