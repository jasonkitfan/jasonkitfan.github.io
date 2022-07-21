// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PhotoSlider extends StatefulWidget {
  const PhotoSlider({Key? key}) : super(key: key);

  @override
  State<PhotoSlider> createState() => _PhotoSliderState();
}

class _PhotoSliderState extends State<PhotoSlider> {
  final sliderImages = [
    Image.asset("assets/images/solar.jpeg", fit: BoxFit.cover),
    Image.asset("assets/images/access_control_rfid.jpg", fit: BoxFit.cover),
    Image.asset("assets/images/vr.jpeg", fit: BoxFit.cover),
  ];
  int activeIndex = 0;

  final controller = CarouselController();

  void changeSlide(int index) => controller.animateToPage(index);

  Widget buildImage(Image slideImage, int index) => Container(
        color: Colors.grey,
        child: slideImage,
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: sliderImages.length,
      onDotClicked: changeSlide);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        children: [
          SizedBox(height: 50),
          Text(
            "WHAT WE HAVE DONE",
            style: kTopic,
          ),
          SizedBox(height: 50),
          Text(
            "Projects",
            style: kSubTopic,
          ),
          SizedBox(height: 50),
          Column(
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: sliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final slideImage = sliderImages[index];
                    return buildImage(slideImage, index);
                  },
                  options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      })),
              SizedBox(height: 50),
              buildIndicator(),
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
