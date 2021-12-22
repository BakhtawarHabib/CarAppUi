import 'dart:async';
import 'package:carappui/UI/screens/ComingSoon/coming_soon.dart';
import 'package:carappui/UI/screens/RegulationUpdates/regulation_updates.dart';
import 'package:carappui/UI/screens/VehicleHub/Essentials/vehicle_security.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_customization.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_insurance.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_tyres.dart';
import 'package:carappui/UI/screens/homepage.dart';
import 'package:carappui/UI/custom_widgets/siginIn/number_verification.dart';
import 'package:carappui/UI/screens/HomeScreen/HomeScreen.dart';
import 'package:carappui/UI/screens/Profile/profile.dart';
import 'package:carappui/UI/screens/PurchaseHistory/purchase_history.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_hub.dart';
import 'package:carappui/UI/screens/forget_password.dart';
import 'package:carappui/UI/screens/new_valuation.dart';
import 'package:carappui/UI/screens/signin_screen.dart';
import 'package:carappui/UI/screens/signup_screen.dart';
import 'package:carappui/UI/screens/singin_process.dart';
import 'package:carappui/UI/screens/ulez_checker.dart';
import 'package:carappui/UI/splash_screen.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    TruthDateGameApp(),
  );
}

class TruthDateGameApp extends StatefulWidget {
  @override
  _TruthDateGameAppState createState() => _TruthDateGameAppState();
}

class _TruthDateGameAppState extends State<TruthDateGameApp> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Get.offAll(
        // () => DummyProduct(),
        () => SignInProcess(),
        transition: Transition.fadeIn,
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: blackColor,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
