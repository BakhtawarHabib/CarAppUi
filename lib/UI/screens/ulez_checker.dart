import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/UI/screens/Drawer/drawer.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ULEZChecker extends StatefulWidget {
  const ULEZChecker({Key? key}) : super(key: key);

  @override
  _ULEZCheckerState createState() => _ULEZCheckerState();
}

class _ULEZCheckerState extends State<ULEZChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonContainer(),
                  Text(
                    'ULEZ Checker',
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
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/images/vehiclehub/car.svg',
                            height: 15.h,
                            width: 15.h,
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: 33.h),
              Container(
                height: 217.h,
                width: 315.w,
                padding: EdgeInsets.only(
                  left: 25.w,
                  top: 20.w,
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
                  children: [
                    SizedBox(),
                    Row(
                      children: [
                        Text(
                          'Enter UK Registration',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ],
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
                                hintText: 'HS18 RRS',
                                contentPadding: EdgeInsets.only(left: 15.w),
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
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
                            color: whiteColor,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Lookup UK Registration',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Find Out If Your Vehicle Meets\n"
                "Emissions And Safety Standards\n"
                "Required To Drive In London, Or\n"
                "If You Need To Pay A Daily \nCharge",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 231.h,
                width: 315.w,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Ultra Low Emission Zone (ULEZ) Compliance",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        color: baseColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 2,
                      width: 0.7.sw,
                      color: greyColor.withOpacity(0.2),
                    ),
                    SizedBox(
                      height: 27.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "This Vehicle Is ULEZ Compliant",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(
                              'assets/icons/tick.svg',
                              height: 22.h,
                              width: 22.h,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
