import 'package:carappui/UI/custom_widgets/NewValutaion/newvaluationwidget.dart';
import 'package:carappui/UI/screens/Drawer/drawer.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewValutaion extends StatefulWidget {
  const NewValutaion({Key? key}) : super(key: key);

  @override
  _NewValutaionState createState() => _NewValutaionState();
}

class _NewValutaionState extends State<NewValutaion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
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
                      'Valuation',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () => Scaffold.of(context).openEndDrawer(),
                        child: Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            color: greyColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: ImageIcon(
                            AssetImage('assets/images/valuationpagecar.png'),
                            color: greyColor,
                          ),
                        ),
                      );
                    }),
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
              SizedBox(height: 25.h),
              Container(
                height: 435.h,
                width: 315.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: baseColor.withOpacity(0.07),
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(8, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 22.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 58.h,
                            width: 132.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.05),
                                  spreadRadius: 10,
                                  blurRadius: 20,
                                  offset: Offset(
                                      8, 8), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Valuation With',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    '20,000 Miles',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      color: baseColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 58.h,
                            width: 132.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: baseColor.withOpacity(0.07),
                                  spreadRadius: 10,
                                  blurRadius: 20,
                                  offset: Offset(
                                      8, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Onther Road (OTR)',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    '£70,985',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      color: baseColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    NewValuationWidget(
                      text: "Dealer Forecourt Valuation",
                      price: "£64,070",
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "On The Road Valuation",
                      price: "£64,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Trade Average Valuation",
                      price: "£64,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Trade Poor Valuation ",
                      price: "£62,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Private Clean Valuation",
                      price: "£63,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Private Average Valuation ",
                      price: "£63,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Part Exchange Valuation",
                      price: "£63,070",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    NewValuationWidget(
                      text: "Auction Valuation",
                      price: "£63,070",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
            ],
          ),
        ),
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
