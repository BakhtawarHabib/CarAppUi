import 'package:carappui/UI/screens/Drawer/hs18rrs.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatefulWidget {
  Color? color;
  int number = 0;

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            drawerColor, //This will change the drawer background to blue.
        //other styles
      ),
      child: Container(
        width: 237.w,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              _createHeader(),
              _createDrawerItem(
                  url: "assets/images/car.png",
                  text: 'HS18 RRS',
                  imageColor: widget.number == 0 ? blackColor : whiteColor,
                  textColor: widget.number == 0 ? blackColor : whiteColor,
                  containerColor: widget.number == 0 ? whiteColor : drawerColor,
                  backgroundColor:
                      widget.number == 0 ? whiteColor : drawerColor,
                  onTap: () {
                    // Get.to(
                    //   HSRRS(),
                    // );
                    setState(() {
                      widget.number = 0;
                    });
                  }),
              widget.number == 0
                  ? SizedBox(
                      height: 20.h,
                    )
                  : Divider(
                      thickness: 1,
                      endIndent: 20.w,
                      indent: 20.w,
                      color: whiteColor.withOpacity(0.2),
                    ),
              // Column(
              //     children: [
              //       SizedBox(
              //         height: 20.h,
              //       ),
              //       Container(
              //         height: 2,
              //         width: 180.w,
              //         color: whiteColor.withOpacity(0.2),
              //       ),
              //       SizedBox(height: 20.h),
              //     ],
              //   ),
              _createDrawerItem(
                  url: "assets/images/car.png",
                  text: 'TS20 MSK',
                  containerColor: widget.number == 1 ? whiteColor : drawerColor,
                  imageColor: widget.number == 1 ? blackColor : whiteColor,
                  textColor: widget.number == 1 ? blackColor : whiteColor,
                  backgroundColor:
                      widget.number == 1 ? whiteColor : drawerColor,
                  onTap: () {
                    // Get.to(
                    //   HSRRS(),
                    // );
                    setState(() {
                      widget.number = 1;
                    });
                  }),
              widget.number == 1
                  ? SizedBox(
                      height: 20.h,
                    )
                  : Divider(
                      thickness: 1,
                      endIndent: 25.w,
                      indent: 25.w,
                      color: whiteColor.withOpacity(0.2),
                    ),
              _createDrawerItem(
                  url: "assets/icons/newveh.png",
                  text: 'New Vehicle Check',
                  containerColor: widget.number == 2 ? whiteColor : drawerColor,
                  imageColor: widget.number == 2 ? blackColor : whiteColor,
                  textColor: widget.number == 2 ? blackColor : whiteColor,
                  backgroundColor:
                      widget.number == 2 ? whiteColor : drawerColor,
                  onTap: () {
                    // Get.to(
                    //   HSRRS(),
                    // );
                    setState(() {
                      widget.number = 2;
                    });
                  }),
              widget.number == 2
                  ? SizedBox(
                      height: 20.h,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Divider(
                        thickness: 1,
                        endIndent: 25.w,
                        indent: 25.w,
                        color: whiteColor.withOpacity(0.2),
                      ),
                    ),

              SizedBox(
                height: 0.3.sh,
              ),
              Divider(
                thickness: 1,
                endIndent: 25.w,
                indent: 25.w,
                color: whiteColor.withOpacity(0.2),
              ),
              _createDrawerItem(
                  url: "assets/images/comingsoon/profile.png",
                  text: 'Support',
                  containerColor: widget.number == 3 ? whiteColor : drawerColor,
                  imageColor: widget.number == 3 ? blackColor : whiteColor,
                  textColor: widget.number == 3 ? blackColor : whiteColor,
                  backgroundColor:
                      widget.number == 2 ? whiteColor : drawerColor,
                  onTap: () {
                    // Get.to(
                    //   HSRRS(),
                    // );
                    setState(() {
                      widget.number = 3;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Divider(
                  thickness: 1,
                  endIndent: 25.w,
                  indent: 25.w,
                  color: whiteColor.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/whitelogo.png',
              width: 100.w,
              height: 100.h,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            thickness: 1,
            endIndent: 25.w,
            indent: 25.w,
            color: whiteColor.withOpacity(0.2),
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              Text(
                'Previous Valuations',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required String url,
    String? text,
    required GestureTapCallback? onTap,
    required Color? backgroundColor,
    required Color? textColor,
    required Color? imageColor,
    required Color? containerColor,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 181.w,
            height: 35.h,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20.w,
                ),
                ImageIcon(
                  AssetImage(url),
                  color: imageColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  text!,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
