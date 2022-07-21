// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';

class BottomFooter extends StatelessWidget {
  const BottomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 5;

    return CustomPaint(
      child: Container(
        padding: EdgeInsets.only(top: 250, left: 100, right: 100),
        width: double.infinity,
        height: 600,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("More About MagTech", style: kFooterTopicStyle),
                  SizedBox(height: 30),
                  Text(kMoreCompanyInfo,
                      style: kFooterContentStyle, textAlign: TextAlign.justify)
                ],
              ),
            ),
            Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Follow Us", style: kFooterTopicStyle),
                  SizedBox(height: 5),
                  MyIconButton(
                    iconPath: "assets/images/facebook.png",
                    iconString: "Like us on Facebook",
                  ),
                  SizedBox(height: 5),
                  MyIconButton(
                    iconPath: "assets/images/twitter.png",
                    iconString: "Follow us on Twitter",
                  ),
                  SizedBox(height: 5),
                  MyIconButton(
                    iconPath: "assets/images/youtube.png",
                    iconString: "Subscribe us on Youtube",
                  ),
                  SizedBox(height: 5),
                  MyIconButton(
                    iconPath: "assets/images/instagram.png",
                    iconString: "Follow us on Instagram",
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Contact Information", style: kFooterTopicStyle),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address: ", style: kFooterContentStyle),
                      Text(kAddress, style: kFooterContentStyle),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone: ", style: kFooterContentStyle),
                      Text(kPhone, style: kFooterContentStyle),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email: ", style: kFooterContentStyle),
                      Text(kEmail, style: kFooterContentStyle),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: MyCustomPainter(),
    );
  }
}

class MyIconButton extends StatelessWidget {
  MyIconButton({
    Key? key,
    required this.iconPath,
    required this.iconString,
  }) : super(key: key);

  final String iconPath;
  final String iconString;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      leading:
          TextButton(onPressed: () {}, child: Image.asset(iconPath, width: 30)),
      title: Text(iconString, style: kFooterContentStyle),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(120, 33, 110, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.9996333);
    path0.quadraticBezierTo(0, size.height * 0.2499083, 0, 0);
    path0.quadraticBezierTo(
        size.width * 0.0652667, size.height * 0.8018667, size.width, 0);
    path0.lineTo(size.width * 0.9994667, size.height * 0.9957667);
    path0.lineTo(0, size.height * 0.9996333);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
