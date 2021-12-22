import 'package:carappui/UI/screens/homepage.dart';
import 'package:carappui/UI/screens/PurchaseHistory/purchase_history.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_hub.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_bottom.dart';

int pageNumber = 1;

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              pageNumber == 1
                  ? HomePageScreen()
                  : pageNumber == 2
                      ? PurchaseHistory()
                      : VehicleHub(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 70.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 70,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              pageNumber = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/icons/home.png'),
                                size: 27.sp,
                                color: pageNumber == 1 ? baseColor : greyColor,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              pageNumber == 1
                                  ? CircleAvatar(
                                      backgroundColor: baseColor,
                                      radius: 3,
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              pageNumber = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/icons/history.png'),
                                size: 27.sp,
                                color: pageNumber == 2 ? baseColor : greyColor,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              pageNumber == 2
                                  ? CircleAvatar(
                                      backgroundColor: baseColor,
                                      radius: 3,
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              pageNumber = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/icons/hub.png'),
                                size: 25.sp,
                                color: pageNumber == 3 ? baseColor : greyColor,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              pageNumber == 3
                                  ? CircleAvatar(
                                      backgroundColor: baseColor,
                                      radius: 3,
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
