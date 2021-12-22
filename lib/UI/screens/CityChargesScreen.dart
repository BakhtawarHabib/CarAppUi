import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CityChargesScreen extends StatefulWidget {
  @override
  State<CityChargesScreen> createState() => _CityChargesScreenState();
}

class _CityChargesScreenState extends State<CityChargesScreen> {
  int selectedCityDate = 1;
  int selectedCityCharge = 1;

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
                    SizedBox(width: 44.w),
                    Text(
                      'Charges Payable',
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
                      selectedCityCharge = 1;
                    });
                  },
                  child: PayableChargesCardWidget(
                    location: 'London',
                    price: '£17.50',
                    time: '7 days a week, 07:00-22:00',
                    title: 'Congestion Charge',
                    borderColor:
                        selectedCityCharge == 1 ? baseColor : whiteColor,
                  ),
                ),
                SizedBox(height: 16.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCityCharge = 2;
                    });
                  },
                  child: PayableChargesCardWidget(
                    location: 'London',
                    price: '£12.50',
                    time: '7 days a week, 24 hours a day',
                    title: 'ULEZ Charge',
                    borderColor:
                        selectedCityCharge == 2 ? baseColor : whiteColor,
                  ),
                ),
                SizedBox(height: 16.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCityCharge = 3;
                    });
                  },
                  child: PayableChargesCardWidget(
                    location: 'All CAZ Zones',
                    price: '£8.00',
                    time: '7 days a week, 24 hours a day',
                    title: 'Clean Air Zone (CAZ) Charge',
                    borderColor:
                        selectedCityCharge == 3 ? baseColor : whiteColor,
                  ),
                ),
                SizedBox(height: 23.h),
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
                          selectedCityDate = 1;
                        });
                      },
                      child: SelectDayCardWidget(
                        numberOfDays: 'Yesterday',
                        date: 'November 18th',
                        backgroundColor: selectedCityDate == 1
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedCityDate == 1 ? whiteColor : blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCityDate = 2;
                        });
                      },
                      child: SelectDayCardWidget(
                        numberOfDays: 'Today',
                        date: 'November 19th',
                        backgroundColor: selectedCityDate == 2
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedCityDate == 2 ? whiteColor : blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCityDate = 3;
                        });
                      },
                      child: SelectDayCardWidget(
                        numberOfDays: 'Tomorrow',
                        date: 'November 20th',
                        backgroundColor: selectedCityDate == 3
                            ? baseColor
                            : greyColor.withOpacity(0.2),
                        textColor:
                            selectedCityDate == 3 ? whiteColor : blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
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
                      '£17.50',
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

  SelectDayCardWidget({
    required this.date,
    required this.numberOfDays,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: 99.w,
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
  String location;
  String time;
  String price;
  Color borderColor;

  PayableChargesCardWidget({
    required this.location,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: greyColor,
                    size: 16.sp,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    location,
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
