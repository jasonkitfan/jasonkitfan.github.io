import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key, required this.mobileBody, required this.desktopApp})
      : super(key: key);

  final Widget mobileBody;
  final Widget desktopApp;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1200) {
        return mobileBody;
      } else {
        return desktopApp;
      }
    });
  }
}
