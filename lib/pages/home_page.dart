// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web/control/desktop_screen.dart';
import 'package:flutter_web/control/mobile_screen.dart';
import 'package:flutter_web/control/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobileBody: MobileScreen(), desktopApp: DesktopScreen());
  }
}
