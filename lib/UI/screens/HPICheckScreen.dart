import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HPICheckReportDetails {
  String title;
  String status;

  HPICheckReportDetails({
    required this.status,
    required this.title,
  });
}

List<HPICheckReportDetails> hpiCheckReportList = [
  HPICheckReportDetails(status: 'All Clear', title: 'Outstanding Finance'),
  HPICheckReportDetails(status: 'Category N', title: 'Insurance-Written off'),
  HPICheckReportDetails(status: 'All Clear', title: 'Police Stolen'),
  HPICheckReportDetails(status: 'All Clear', title: 'Mileage Anomaly'),
  HPICheckReportDetails(status: 'All Clear', title: 'High RIsk Vehicle'),
  HPICheckReportDetails(status: 'All Clear', title: 'Exported'),
  HPICheckReportDetails(status: 'All Clear', title: 'Imported'),
  HPICheckReportDetails(status: 'All Clear', title: 'Scrapped'),
  HPICheckReportDetails(status: 'All Clear', title: 'Colour Change'),
  HPICheckReportDetails(status: 'All Clear', title: 'Previous N.Ireland'),
  HPICheckReportDetails(status: '363 Days Left', title: 'MOT Status'),
  HPICheckReportDetails(status: '20/09/2022', title: 'MOT Due'),
];

class HPICheckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          // primary: true,
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
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
                    ),
                    Text(
                      'HPI Report',
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
                          'assets/icons/ValuationScreenIcon.svg',
                          height: 15.h,
                          width: 15.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33.h),
              CarDetailsCardWidget(),
              SizedBox(height: 25.h),
              Container(
                height: 48.h,
                width: 315.w,
                decoration: BoxDecoration(
                  color: blackPearlColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/whitelogo.png"),
                      color: whiteColor,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'MeVehicle Report',
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 22.h),
              HPIReportStatusCardsWidget(),
              SizedBox(height: 17.h),
              DVLAVehicleDetailsCardWidget(),
              SizedBox(height: 36.h),
              TechnicalDataCardWidget(),
              SizedBox(height: 36.h),
              VehicleIdentificationCard(),
              SizedBox(height: 36.h),
              CO2BrandingDetailsCard(),
              SizedBox(height: 36.h),
              RunningCostCardWidget(),
              SizedBox(height: 36.h),
              TaxExpiryDateCardWidget(),
              SizedBox(height: 36.h),
              InsuranceWriteOffCardWidget(),
              SizedBox(height: 36.h),
              FinanceRecordsCardWidget(),
              SizedBox(height: 36.h),
              StolenVehicleCardWidget(),
              SizedBox(height: 36.h),
              VehicleScrappedCardWidget(),
              SizedBox(height: 36.h),
              HighRiskValueCardWidget(),
              SizedBox(height: 36.h),
              ImportedOutsideEUCardWidget(),
              SizedBox(height: 36.h),
              ImportedNorthernIrelandCardWidget(),
              SizedBox(height: 36.h),
              VehicleExportedCardWidget(),
              SizedBox(height: 36.h),
              ColourChangeCardWidget(),
              SizedBox(height: 36.h),
              VehicleIdentificationCardWidget(),
              SizedBox(height: 36.h),
              Container(
                height: 459.h,
                width: 315.w,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0.1,
                      offset: Offset(5, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 45.h,
                      width: 315.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                      decoration: BoxDecoration(
                        color: blackPearlColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.r),
                          topLeft: Radius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Keeper Changes',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: greenColor,
                      thickness: 5,
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      // height: 90.h,
                      width: 277.w,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Keeper Changed',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '17/02/2020',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Previous Keepers',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '4',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Keeper Changed',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '22/11/2019',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Previous Keepers',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '3',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Keeper Changed',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '13/09/2019',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Previous Keepers',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Keeper Changed',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24/05/2016',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Previous Keepers',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 38.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Date of original purchase:  ',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor,
                                ),
                              ),
                              Text(
                                '31/10/2012',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Column(
                            children: [
                              Text(
                                'Total number of owners including the',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'current keeper: ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: greyColor,
                                    ),
                                  ),
                                  Text(
                                    '31/10/2012',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}

class VehicleIdentificationCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 289.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Vehicle Identification',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                // Image.asset(
                //   'assets/icons/ChatIcon.png',
                //   height: 15.h,
                // ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 11.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Latest Plate Transfer Information.',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: greyColor,
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transferred On',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 22.h,
                      width: 87.w,
                      decoration: BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'DN62 F0F',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Previous Reg',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 22.h,
                      width: 87.w,
                      decoration: BoxDecoration(
                        color: Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'BC03 LEW',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transfer Date',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Center(
                      child: Text(
                        '14/09/2021',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7.h),
                Divider(thickness: 1),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transferred On',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 22.h,
                      width: 87.w,
                      decoration: BoxDecoration(
                        color: Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'BC03 LEW',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Previous Reg',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 22.h,
                      width: 87.w,
                      decoration: BoxDecoration(
                        color: Color(0xffD2D2D2),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'DN62 F0F',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transfer Date',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Center(
                      child: Text(
                        '13/03/2020',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColourChangeCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Colour Change',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: greyColor,
                  ),
                ),
                Text(
                  'Vehicle colour has not been changed.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class VehicleExportedCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Vehicle Exported',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: greyColor,
                  ),
                ),
                Text(
                  'Vehicle not exported.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class ImportedNorthernIrelandCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Imported Northern Ireland',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: greyColor,
                  ),
                ),
                Text(
                  'Vehicle not a previous Northern Ireland\n'
                  'Vehicle.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class ImportedOutsideEUCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Imported outside EU',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: greyColor,
                  ),
                ),
                Text(
                  'Vehicle not imported from outside EU.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class HighRiskValueCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'High Risk Vehicle',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
              width: 277.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Clear',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    'Vehicle has no High Risk records.',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class VehicleScrappedCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Vehicle Scrapped',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
              width: 277.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Clear',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    'Vehicle is not reported as scrapped.',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class StolenVehicleCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Stolen Vehicle',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            width: 277.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Clear',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: greyColor,
                  ),
                ),
                Text(
                  'Vehicle is not reported Stolen.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
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

class FinanceRecordsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Finance Records',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.warning_amber,
                  color: whiteColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: darkRedColor,
            thickness: 5,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 277.w,
            child: Text(
              'There are outstanding finance records\n'
              'for this vehicle.',
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 14.h),
          Container(
            height: 90.h,
            width: 277.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Agreement Date:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '29/07/2021',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Agreement type:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Hire Purchase',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Agreement Term:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '60',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InsuranceWriteOffCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: Color(0xffDC3D48),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Insurance Write Off',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.warning_amber,
                  color: whiteColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: darkRedColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Container(
            height: 90.h,
            width: 277.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Write off category:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Cat N',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Loss date:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '04/10/2019',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Register Entry:',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '05/11/2019',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TaxExpiryDateCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Tax Expiry Date',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Container(
                width: 277.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax Expires:',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: greyColor,
                          ),
                        ),
                        Text(
                          '01/02/2022',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RunningCostCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 167.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Running Costs',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Container(
                height: 84.h,
                width: 277.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '6 Months Tax:',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: greyColor,
                          ),
                        ),
                        Text(
                          '£0.00',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12 Months Tax:',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: greyColor,
                          ),
                        ),
                        Text(
                          '£30.00',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CO2BrandingDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'CO2 Branding',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Container(
                width: 277.w,
                child: Row(
                  children: [
                    Container(
                      height: 47.h,
                      width: 47.w,
                      decoration: BoxDecoration(
                        color: lightGreenColor,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'C',
                          style: GoogleFonts.poppins(
                            fontSize: 27.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '120 G/Km',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'This is the Amount of Carbon Dioxide (CO2)\n'
                          'This Vehicle Emits Derived From Standard EU\n'
                          'Tests.',
                          style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VehicleIdentificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Vehicle Identification',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Container(
                width: 277.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Engine Number',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: greyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '80988336',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Vin Last 5',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: greyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '66985',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TechnicalDataCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 41.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'Technical Data',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 16.h),
          Container(
            height: 560.h,
            width: 277.w,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Dimensions',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11.h),
                DimensionDetails(),
                SizedBox(height: 18.h),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 18.h),
                EngineDataDetails(),
                SizedBox(height: 18.h),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 18.h),
                Container(
                  height: 114.h,
                  width: 277.w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Fuel Consumption',
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fuel Tank Capacity',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: greyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '57 Litres',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Extra Urban',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: greyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '72.4 mpg',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Urban Cold',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: greyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '50.4 mpg',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Combined',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: greyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '61.4 mpg',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EngineDataDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 223.h,
        width: 285.w,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Engine Data',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Engine CC',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '1995 cc',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Engine Location',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Unknown',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No. of cylinders',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '4',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Torque Ib/ft',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '280',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Cylinder Type',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bore mm',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '-',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Valves',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '4',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '0-62 mph',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '8 seconds',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Aspiration',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'TURBOCHARGED',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Stroke mm',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '-',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Power BHP',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Top Speed MPH',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Top Speed MPH',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '146',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DimensionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Length',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '4,624',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight Kgs',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1,970',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Width mm',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1,811',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Height mm',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1,429',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class DVLAVehicleDetailsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 395.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 41.h,
            width: 315.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: blackPearlColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.ac_unit_outlined, color: Colors.transparent),
                Text(
                  'DVLA Vehicle Details',
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: greenColor,
            thickness: 5,
          ),
          SizedBox(height: 16.h),
          Container(
            height: 300.h,
            width: 277.w,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Make',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Text(
                      'Land Rover',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Model',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Text(
                      'HS18 RRS',
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 228.h,
                  width: 277.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Year Built',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '2012',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Colour',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'White',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Body Style',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'SALOON',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Keeper',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '17/02/2020',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Fuel',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'DIESEL',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Registered in UK',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '31/10/2012',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'No. of Seats',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '5',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Color Changed',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'NO',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Gearbox',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'MANUAL',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Engine CC',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1995cc',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Previous Keepers',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '4',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Imported',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'NO',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}

class CarDetailsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 217.h,
      width: 315.w,
      padding: EdgeInsets.only(left: 27.w, top: 16.h, right: 28.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LAND ROVER',
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
          Image.asset(
            'assets/images/jeep.png',
          ),
        ],
      ),
    );
  }
}

class HPIReportStatusCardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 751.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.1,
            offset: Offset(5, 2),
          )
        ],
      ),
      padding:
          EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 13.h),
      child: Column(
        children: [
          GridView.builder(
            physics: BouncingScrollPhysics(),
            primary: true,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.25.h,
              crossAxisSpacing: 13.w,
              mainAxisSpacing: 18.h,
            ),
            itemCount: 12,
            itemBuilder: (BuildContext ctx, index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      // height: 45.5.h,
                      // width: 132.w,
                      decoration: BoxDecoration(
                        color: Color(0xff172331),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          hpiCheckReportList[index].title,
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 45.5.h,
                      // width: 132.w,
                      decoration: BoxDecoration(
                        color:
                            index == 1 ? Color(0xffDE3B4D) : Color(0xff5DBD5C),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.r),
                          bottomRight: Radius.circular(15.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          hpiCheckReportList[index].status,
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'As of report date:',
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                '22/09/2021',
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
