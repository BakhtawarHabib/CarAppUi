// import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:carappui/UI/screens/ComingSoon/coming_soon.dart';
import 'package:carappui/UI/screens/HPICheckScreen.dart';
import 'package:carappui/UI/screens/RegulationUpdates/regulation_updates.dart';
import 'package:carappui/UI/screens/ValuationScreen.dart';
import 'package:carappui/UI/screens/VehicleHub/Essentials/vehicle_security.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_customization.dart';
import 'package:carappui/UI/screens/VehicleHub/vehicle_tyres.dart';
import 'package:carappui/UI/screens/homepage.dart';
import 'package:carappui/UI/screens/ulez_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import './Home.dart';
import 'package:adobe_xd/page_link.dart';
// import './ClickValuation.dart';
// import './ULEZCheckerCompliant.dart';
// import './RegulationUpdates.dart';
// import './Vehiclesecurity.dart';
// import './vehiclecustomisation.dart';
// import './Tyres.dart';
// import './ComingSoon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehicleHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(start: 0.0, end: 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 26.0, start: 30.0),
              Pin(size: 26.0, start: 38.0),
              child: PageLink(
                links: [
                  // PageLinkInfo(
                  //   ease: Curves.easeOut,
                  //   duration: 1.0,
                  //   pageBuilder: () => Home(),
                  // ),
                ],
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x0d000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 7.6, middle: 0.4884),
                      Pin(start: 6.0, end: 6.6),
                      child:
                          // Adobe XD layer: 'arrow-ios-forward-f…' (shape)
                          SvgPicture.string(
                        _svg_fr3koh,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 124.0, middle: 0.5),
              Pin(size: 28.0, start: 37.0),
              child: Text(
                'Vehicle Hub ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff172331),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Pinned.fromPins(
              Pin(start: 7.0, end: 5.0),
              Pin(size: 242.0, start: 91.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 50.0, middle: 0.3738),
                    Pin(size: 15.0, middle: 0.4846),
                    child:
                        // Adobe XD layer: 'Vehicle valuation' (text)
                        Text(
                      'valuation',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xff172331),
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 78.0, start: 23.0),
                          Pin(size: 21.0, start: 0.0),
                          child: Text(
                            'Essentials',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: const Color(0xff172331),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 120.0, start: 12.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 125.0, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 78.0, middle: 0.5088),
                                      Pin(size: 15.0, end: 7.0),
                                      child: Text(
                                        'Petrol Nearby',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          color: const Color(0xff172331),
                                          fontWeight: FontWeight.w600,
                                          height: 1.6,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: '1.Petrol Station-01' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/vehiclehub/petrol.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 125.0, middle: 0.3319),
                                Pin(start: 0.0, end: 0.0),
                                child:
                                    // Adobe XD layer: '2.Vehicle Valuation…' (shape)
                                    PageLink(
                                  links: [
                                    PageLinkInfo(
                                      ease: Curves.easeOut,
                                      duration: 1.0,
                                      pageBuilder: () => ValuationScreen(),
                                    ),
                                  ],
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage(
                                            'assets/images/vehiclehub/valuation.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 125.0, middle: 0.6681),
                                Pin(start: 0.0, end: 0.0),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 52.0, middle: 0.5068),
                                      Pin(size: 15.0, end: 6.0),
                                      child: Text(
                                        'HPI Check',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          color: const Color(0xff172331),
                                          fontWeight: FontWeight.w600,
                                          height: 1.6,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 125.0, middle: 0.3319),
                                      Pin(start: 0.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: '2.Vehicle Valuation…' (shape)
                                          PageLink(
                                        links: [
                                          PageLinkInfo(
                                            ease: Curves.easeOut,
                                            duration: 1.0,
                                            pageBuilder: () =>
                                                ValuationScreen(),
                                          ),
                                        ],
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: const AssetImage(
                                                'assets/images/vehiclehub/hpicheck.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 125.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: PageLink(
                                  links: [
                                    // PageLinkInfo(
                                    //   ease: Curves.easeOut,
                                    //   duration: 1.0,
                                    //   pageBuilder: () => ULEZCheckerCompliant(),
                                    // ),
                                  ],
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        ULEZChecker(),
                                      );
                                    },
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(size: 68.0, middle: 0.5088),
                                          Pin(size: 15.0, end: 7.0),
                                          child:
                                              // Adobe XD layer: 'ULEZ Checker ' (text)
                                              Text(
                                            'ULEZ Checker ',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              color: const Color(0xff172331),
                                              fontWeight: FontWeight.w600,
                                              height: 1.6,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: 0.0),
                                          Pin(start: 0.0, end: 0.0),
                                          child:
                                              // Adobe XD layer: '10.Compliance Check…' (shape)
                                              Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: const AssetImage(
                                                    'assets/images/vehiclehub/ulez.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 125.0, start: 0.0),
                          Pin(size: 128.0, end: 0.0),
                          child: PageLink(
                            links: [
                              // PageLinkInfo(
                              //   ease: Curves.easeOut,
                              //   duration: 1.0,
                              //   pageBuilder: () => RegulationUpdates(),
                              // ),
                            ],
                            child: GestureDetector(
                              onTap: () {
                                Get.to(
                                  RegulationUpdates(),
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 56.0, middle: 0.5072),
                                    Pin(size: 30.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Regulation updater' (text)
                                        Text(
                                      'Regulation\nUpdates',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        color: const Color(0xff172331),
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 8.0),
                                    child:
                                        // Adobe XD layer: '11.Regulation Updat…' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: const AssetImage(
                                              'assets/images/vehiclehub/regulation.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Pinned.fromPins(
                Pin(size: 283.0, start: 7.0),
                Pin(size: 135.0, middle: 0.5214),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 48.0, start: 23.0),
                      Pin(size: 21.0, start: 0.0),
                      child: Text(
                        'Extras',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: const Color(0xff172331),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 7.0, end: 0.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 125.0, start: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child: PageLink(
                              links: [
                                // PageLinkInfo(
                                //   ease: Curves.easeOut,
                                //   duration: 1.0,
                                //   pageBuilder: () => Vehiclesecurity(),
                                // ),
                              ],
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(VehicleSecurity());
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 42.0, middle: 0.506),
                                      Pin(size: 30.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'Regulation updater' (text)
                                          Text(
                                        'Vehicle\nSecurity',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          color: const Color(0xff172331),
                                          fontWeight: FontWeight.w600,
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 8.0),
                                      child:
                                          // Adobe XD layer: '4.Vehicle Security-…' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/vehiclehub/security.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 125.0, middle: 0.5),
                            Pin(start: 0.0, end: 0.0),
                            child: PageLink(
                              links: [
                                // PageLinkInfo(
                                //   ease: Curves.easeOut,
                                //   duration: 1.0,
                                //   pageBuilder: () => vehiclecustomisation(),
                                // ),
                              ],
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(VehicleCustomisation());
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 76.0, middle: 0.5102),
                                      Pin(size: 30.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'Regulation updater' (text)
                                          Text(
                                        'Vehicle\nCustomisation',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          color: const Color(0xff172331),
                                          fontWeight: FontWeight.w600,
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 8.0),
                                      child:
                                          // Adobe XD layer: '5.Vehicle Costomisa…' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/vehiclehub/vehiclecustom.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 125.0, end: 0.0),
                            Pin(start: 0.0, end: 8.0),
                            child: PageLink(
                              links: [
                                // PageLinkInfo(
                                //   ease: Curves.easeOut,
                                //   duration: 1.0,
                                //   pageBuilder: () => Tyres(),
                                // ),
                              ],
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    VehicleTyres(),
                                  );
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 28.0, middle: 0.5052),
                                      Pin(size: 15.0, end: 7.0),
                                      child:
                                          // Adobe XD layer: 'Regulation updater' (text)
                                          Text(
                                        'Tyres',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          color: const Color(0xff172331),
                                          fontWeight: FontWeight.w600,
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: '8.Tyres-01' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/vehiclehub/tyres.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 203.0, start: 7.0),
              Pin(size: 128.0, middle: 0.7427),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 70.0, start: 23.0),
                    Pin(size: 21.0, start: 0.0),
                    child: Text(
                      'Rewards',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: const Color(0xff172331),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 8.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 125.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                ease: Curves.easeOut,
                                duration: 1.0,
                                pageBuilder: () => HPICheckScreen(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(size: 44.0, middle: 0.5062),
                                  Pin(size: 15.0, end: 7.0),
                                  child:
                                      // Adobe XD layer: 'Regulation updater' (text)
                                      Text(
                                    'Rewards',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: const Color(0xff172331),
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child:
                                      // Adobe XD layer: '9.Rewards-01' (shape)
                                      Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage(
                                            'assets/images/vehiclehub/gift.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 125.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: PageLink(
                            links: [
                              // PageLinkInfo(
                              //   ease: Curves.easeOut,
                              //   duration: 1.0,
                              //   pageBuilder: () => ComingSoon(),
                              // ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(size: 48.0, middle: 0.5065),
                                  Pin(size: 15.0, end: 7.0),
                                  child:
                                      // Adobe XD layer: 'Regulation updater' (text)
                                      Text(
                                    'Referrals ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: const Color(0xff172331),
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child:
                                      // Adobe XD layer: '7.Referral-01' (shape)
                                      Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage(
                                            'assets/images/vehiclehub/referrals.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(size: 125.0, start: 7.0),
              Pin(size: 131.0, end: 25.0),
              child: PageLink(
                links: [
                  // PageLinkInfo(
                  //   ease: Curves.easeOut,
                  //   duration: 1.0,
                  //   pageBuilder: () => ComingSoon(),
                  // ),
                ],
                child: GestureDetector(
                  onTap: () {
                    Get.to(ComingSoon());
                  },
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 77.0, middle: 0.4792),
                        Pin(size: 21.0, start: 0.0),
                        child: Text(
                          'Insurance',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: const Color(0xff172331),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 11.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 52.0, middle: 0.5068),
                              Pin(size: 15.0, end: 7.0),
                              child:
                                  // Adobe XD layer: 'Regulation updater' (text)
                                  Text(
                                'Insurance',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: const Color(0xff172331),
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: '6.Insurance-01' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(
                                        'assets/images/vehiclehub/insurance.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 4.0, middle: 0.6523),
              Pin(size: 4.0, end: 37.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff085dc4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_fr3koh =
    '<svg viewBox="39.0 51.0 7.6 13.4" ><path transform="translate(25.5, 43.54)" d="M 19.99593734741211 20.88398551940918 C 20.24660110473633 20.88442230224609 20.48952865600586 20.8065357208252 20.68254089355469 20.66384696960449 C 20.90193939208984 20.50156784057617 21.03994750976562 20.26807022094727 21.06611251831055 20.01488304138184 C 21.09227752685547 19.76169395446777 21.00445175170898 19.50962066650391 20.82200622558594 19.31428718566895 L 16.01578140258789 14.18405532836914 L 20.65035629272461 9.044252395629883 C 20.83034133911133 8.846516609191895 20.91455841064453 8.592926025390625 20.88435745239258 8.339628219604492 C 20.85414886474609 8.086331367492676 20.71202087402344 7.85422420501709 20.48943328857422 7.694695472717285 C 20.26503372192383 7.518545627593994 19.96844100952148 7.433900833129883 19.67111587524414 7.461154460906982 C 19.37378692626953 7.488407611846924 19.10268402099609 7.625088691711426 18.92311859130859 7.838265419006348 L 13.7414083480835 13.58106231689453 C 13.41600227355957 13.93424797058105 13.41600227355957 14.44343757629395 13.7414083480835 14.79662132263184 L 19.10549926757812 20.5394172668457 C 19.32377815246582 20.77434158325195 19.6545295715332 20.9023323059082 19.99593734741211 20.88398361206055 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
