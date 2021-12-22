import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TollChargesScreen extends StatefulWidget {
  @override
  State<TollChargesScreen> createState() => _TollChargesScreenState();
}

class _TollChargesScreenState extends State<TollChargesScreen> {
  int selectedTollDate = 1;
  int selectedTollCharge = 1;
  int selectedTollCrossing = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.h),
                Row(
                  children: [
                    Container(
                      height: 36.h,
                      width: 36.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.2),
                            blurRadius: 4,
                            spreadRadius: 0.1,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    // Spacer(),
                    SizedBox(width: 54.w),
                    Text(
                      'Toll Charges',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 26.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Land Rover',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'R Rover Sport Autobiography',
                      style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'HS18 RRS',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.h),
                Text(
                  'Select Charges',
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTollCharge = 1;
                    });
                  },
                  child: PayableChargesCardWidget(
                    price: '£2.00',
                    time: '7 days a week, 24 hours a day',
                    title: 'Merseyflow(Mersey Gateway\n'
                        'Bridge and Silver Jubilee Bridge)',
                    borderColor:
                        selectedTollCharge == 1 ? baseColor : whiteColor,
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  'Select Day',
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTollDate = 1;
                        });
                      },
                      child: SelectDayCardWidget(
                        width: 99.w,
                        numberOfDays: 'Yesterday',
                        date: 'November 18th',
                        backgroundColor: selectedTollDate == 1
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedTollDate == 1 ? whiteColor : blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTollDate = 2;
                        });
                      },
                      child: SelectDayCardWidget(
                        width: 99.w,
                        numberOfDays: 'Today',
                        date: 'November 19th',
                        backgroundColor: selectedTollDate == 2
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedTollDate == 2 ? whiteColor : blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTollDate = 3;
                        });
                      },
                      child: SelectDayCardWidget(
                        width: 99.w,
                        numberOfDays: 'Tomorrow',
                        date: 'November 20th',
                        backgroundColor: selectedTollDate == 3
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedTollDate == 3 ? whiteColor : blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Text(
                  'Select Number of Crossings',
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTollCrossing = 1;
                        });
                      },
                      child: SelectDayCardWidget(
                        width: 151.w,
                        numberOfDays: 'Single',
                        date: '1 Crossing',
                        backgroundColor: selectedTollCrossing == 1
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedTollCrossing == 1 ? whiteColor : blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTollCrossing = 2;
                        });
                      },
                      child: SelectDayCardWidget(
                        width: 151.w,
                        numberOfDays: 'Return',
                        date: '2 Crossing',
                        backgroundColor: selectedTollCrossing == 2
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedTollCrossing == 2 ? whiteColor : blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payable Amount',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '£2.00',
                      style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        color: baseColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  'Select Payment Method',
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 65.h,
                  width: 315.w,
                  padding: EdgeInsets.only(left: 10.w, right: 18.w),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: greyColor.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 45.h,
                        width: 67.w,
                        decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/ApplePayIcon.svg',
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        'Apply Pay',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle,
                        color: baseColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  height: 55.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'Confirm Payment',
                      style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SelectDayCardWidget extends StatelessWidget {
  String numberOfDays;
  String date;
  Color backgroundColor;
  Color textColor;
  double width;

  SelectDayCardWidget({
    required this.date,
    required this.numberOfDays,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numberOfDays,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            date,
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
              color: textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PayableChargesCardWidget extends StatelessWidget {
  String title;
  String? location;
  String time;
  String price;
  Color borderColor;

  PayableChargesCardWidget({
    this.location,
    required this.price,
    required this.time,
    required this.title,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 315.w,
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: borderColor,
          ),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.1),
              blurRadius: 15,
              spreadRadius: 2,
              offset: Offset(0, 10),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2.h),
              location == null
                  ? SizedBox(
                      height: 0,
                      width: 0,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: greyColor,
                          size: 16.sp,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          location!,
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: greyColor,
                    size: 16.sp,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: greyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            price,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
