// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_web/custom_widget/services.dart';
import '../custom_widget/bottom_footer.dart';
import '../custom_widget/custom_app_bar.dart';
import '../custom_widget/introduction.dart';
import '../custom_widget/photo_slider.dart';

class DesktopScreen extends StatefulWidget {
  DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  ScrollController scrollController = ScrollController();
  double pixel = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    scrollController.addListener(() {
      pixel = scrollController.position.pixels;
      setState(() {
        pixel = scrollController.position.pixels;
        print(pixel);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            CustomAppBar(),
            Introduction(pixel: pixel),
            SizedBox(height: 100),
            Services(pixel: pixel),
            SizedBox(height: 100),
            PhotoSlider(),
            SizedBox(height: 100),
            BottomFooter(),
          ],
        ),
      ),
    );
  }
}
