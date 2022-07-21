// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';

class Introduction extends StatelessWidget {
  Introduction({Key? key, required this.pixel}) : super(key: key);

  double pixel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                duration: Duration(seconds: 3),
                opacity: pixel >= 5 ? 1.0 : 0.5,
                child: AnimatedPadding(
                    padding: EdgeInsets.only(left: pixel >= 5 ? 100 : 0.0),
                    duration: Duration(seconds: 2),
                    child: Intro())),
            SizedBox(width: 30),
            IntroImage(),
          ],
        ),
      ),
    );
  }
}

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kFirstIntro,
            style: kIntroStyle,
          ),
          Text(
            kBriefIntro,
            style: kIntroBriefStyle,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class IntroImage extends StatelessWidget {
  const IntroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 40),
      Image.asset(
        "assets/images/iot_image.png",
        width: 450,
      ),
      const SizedBox(height: 40)
    ]);
  }
}
