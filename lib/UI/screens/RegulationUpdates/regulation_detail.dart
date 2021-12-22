import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegulationDetails extends StatefulWidget {
  const RegulationDetails({Key? key}) : super(key: key);

  @override
  _RegulationDetailsState createState() => _RegulationDetailsState();
}

class _RegulationDetailsState extends State<RegulationDetails> {
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
                width: 40.w,
              ),
              Text(
                'Regulation Updates',
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Image.asset(
              "assets/images/regulationupdates.png",
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(width: 30.w),
              Text(
                "15 October, 2021",
                style: TextStyle(
                  color: blackColor.withOpacity(0.3),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(width: 30.w),
              Text(
                "The ULEZ Expansion You Should\nBe Prepared For",
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Text(
                    "From 25 October 2021, The Existing Central\n"
                    "London Ultra Low Emission Zone (ULEZ) Will\n"
                    "Expand To Create A Single Larger Zone Up To,\n"
                    "But Not Including, The North Circular Road(A406)\n"
                    "And South Circular Road (A205).",
                    style: TextStyle(
                      color: blackColor.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
