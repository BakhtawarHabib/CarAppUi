import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/UI/screens/RegulationUpdates/customContainer.dart';
import 'package:carappui/UI/screens/RegulationUpdates/regulation_detail.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegulationUpdates extends StatefulWidget {
  const RegulationUpdates({Key? key}) : super(key: key);

  @override
  _RegulationUpdatesState createState() => _RegulationUpdatesState();
}

class _RegulationUpdatesState extends State<RegulationUpdates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1.35.sh,
          child: Column(
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
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: 1.2.sh,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(
                            RegulationDetails(),
                          );
                        },
                        child: CustomContainer(
                          imageURL: "assets/images/regulationupdates.png",
                          tile: "The ULEZ Expansion You Should Be...",
                          description:
                              "From 25 October 2021, The Existing Central\n"
                              "London Ultra Low Emission Zone (ULEZ)...",
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomContainer(
                        imageURL: "assets/images/trafic.png",
                        tile: "More Than 44,000 Clean Air Zone...",
                        description:
                            "The Daily Charge For Vehicles That Do Not\n"
                            "Meet Standards Is £8 For Cars, Vans...",
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomContainer(
                        imageURL: "assets/images/second.png",
                        tile: "Electric Vehicles, The Revolution Is...",
                        description: "After Years Of Talk From Carmakers, The\n"
                            "Industry Is Rapidly Being Transformed...",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
