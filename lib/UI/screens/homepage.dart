import 'package:carappui/UI/custom_widgets/homepage/second_container.dart';
import 'package:carappui/UI/custom_widgets/homepage/homecontainer.dart';
import 'package:carappui/UI/screens/AddNewVehicleScreen.dart';
import 'package:carappui/UI/screens/CityChargesScreen.dart';
import 'package:carappui/UI/screens/HomeScreen/hpi_check.dart';
import 'package:carappui/UI/screens/HomeScreen/mot_alert.dart';
import 'package:carappui/UI/screens/HomeScreen/taxalert.dart';
import 'package:carappui/UI/screens/Profile/profile.dart';
import 'package:carappui/UI/screens/TollChargesScreen.dart';
import 'package:carappui/UI/screens/custom_bottom.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigation(),
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(ProfileScreen());
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightGrey,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.userAlt,
                            color: darkGrey,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: lightGrey,
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        "assets/icons/calender.svg",
                        height: 20,
                      )),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 3,
                left: 55,
                child: Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    color: baseColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 245.h,
            width: 312.w,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(10, 10), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 25.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        "LAND ROVER",
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.h,
                    ),
                    Text(
                      "R Rover Sport Autobiography",
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.h,
                    ),
                    Text(
                      "HS18 RRS",
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 112.h,
                  width: 312.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/jeep.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: darkGrey,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 10.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: darkGrey,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(AddNewVehicleScreen());
                      },
                      child: Container(
                        height: 22.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blackColor,
                        ),
                        child: Icon(
                          Icons.add,
                          color: whiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => MotAlert(),
                    );
                  },
                  child: HomePageContainer(
                    imgURL: 'assets/icons/mot.png',
                    text: "MOT",
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(
                      HPICheck(),
                    );
                  },
                  child: HomePageContainer(
                    imgURL: 'assets/icons/hpi.png',
                    text: "HPI Check",
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => TaxAlert(),
                    );
                  },
                  child: HomePageContainer(
                    imgURL: 'assets/icons/tax.png',
                    text: "TAX",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            "PAY TO DRIVE",
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(CityChargesScreen());
                },
                child: SecondContainer(
                  imgURL: 'assets/icons/city.png',
                  text: "CITY \nCharges",
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(TollChargesScreen());
                },
                child: SecondContainer(
                  imgURL: 'assets/icons/tol.png',
                  text: "TOLL \nCharges",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
