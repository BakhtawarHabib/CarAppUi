import 'package:carappui/constants/colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HPICheck extends StatefulWidget {
  @override
  State<HPICheck> createState() => _HPICheckState();
}

class _HPICheckState extends State<HPICheck> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 37.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      'HPI Check',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/vehiclehub/car.svg',
                          height: 15.h,
                          width: 15.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 33.h),
                Container(
                  height: 217.h,
                  width: 315.w,
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: greyColor.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter UK Registration',
                        style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Positioned(
                          //   top: -3,
                          //   child: Padding(
                          //     padding: EdgeInsets.only(left: 7),
                          //     child: CountryCodePicker(
                          //       onChanged: (country) {
                          //         setState(
                          //           () {
                          //             selectedCountryName =
                          //                 country.name.toString();
                          //           },
                          //         );
                          //       },
                          //       padding: EdgeInsets.all(0),
                          //       initialSelection: 'PK',
                          //       showOnlyCountryWhenClosed: true,
                          //       textOverflow: TextOverflow.ellipsis,
                          //       alignLeft: true,
                          //       showFlagDialog: true,
                          //       showFlagMain: true,
                          //       hideMainText: true,
                          //       showCountryOnly: true,
                          //       flagWidth: 27,
                          //       showDropDownButton: false,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            width: 33.w,
                            height: 50.h,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: baseColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              border: Border.all(
                                color: greyColor,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 3.h,
                                ),
                                Image.asset(
                                  'assets/images/vehiclehub/ukflag.png',
                                  height: 13.h,
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  'GB',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 230.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: yellowStar,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r),
                              ),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'ENTER VEHICLE REG',
                                  contentPadding: EdgeInsets.only(left: 15.w),
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: greyColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 50.h,
                        width: 260.w,
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/SearchIcon.svg',
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Buy Valuation Report £1.99',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 33.h),
                Text(
                  'Receive A Full Valuation For Your Vehicle ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15.h),
                ValuationCard(title: 'On The Road Valuation'),
                ValuationCard(title: 'Dealer Forecourt Valuation'),
                ValuationCard(title: 'Trade Average Valuation'),
                ValuationCard(title: 'Trade Poor Valuation'),
                ValuationCard(title: 'Private Clean Valuation'),
                ValuationCard(title: 'Private Average Valuation'),
                ValuationCard(title: 'Part Exchange Valuation'),
                ValuationCard(title: 'Auction Valuation'),
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
class ValuationCard extends StatelessWidget {
  String title;

  ValuationCard({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
            height: 15,
            width: 15,
          ),
          SizedBox(width: 10.w),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
