// ignore_for_file: unused_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/widgets/main/main_section.dart';
import 'constants.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //click and drag to scroll
      // scrollBehavior: MaterialScrollBehavior().copyWith(
      //   dragDevices: {
      //     PointerDeviceKind.mouse,
      //     PointerDeviceKind.touch,
      //     PointerDeviceKind.stylus,
      //     PointerDeviceKind.unknown
      //   },
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: kBodyTextColor),
              bodyText2: TextStyle(color: kBodyTextColor),
            ),
      ),
      home: MainSection(),
    );
  }
}
