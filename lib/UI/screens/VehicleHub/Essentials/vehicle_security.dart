import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/UI/custom_widgets/vehiclehub/custom_container.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicleSecurity extends StatefulWidget {
  const VehicleSecurity({Key? key}) : super(key: key);

  @override
  _VehicleSecurityState createState() => _VehicleSecurityState();
}

class _VehicleSecurityState extends State<VehicleSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                width: 60.w,
              ),
              Text(
                'Vehicle Security',
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            "assets/images/vehiclehub/new/vehiclesecurity.png",
            width: 128.w,
            height: 123.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'View A List Of Approved Affiliates',
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomRow(),
          SizedBox(
            height: 20.h,
          ),
          CustomRow(),
          SizedBox(
            height: 20.h,
          ),
          CustomRow(),
          SizedBox(
            height: 20.h,
          ),
          CustomRow(),
        ],
      ),
    );
  }
}
