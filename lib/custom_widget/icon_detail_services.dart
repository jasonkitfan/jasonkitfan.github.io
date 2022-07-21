// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class IconServiceIntro extends StatefulWidget {
  IconServiceIntro(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.detail})
      : super(key: key);

  final IconData iconData;
  final String title;
  final String detail;

  @override
  State<IconServiceIntro> createState() => _IconServiceIntroState();
}

class _IconServiceIntroState extends State<IconServiceIntro> {
  bool isHover = false;

  void onEntered(bool hover) {
    isHover = hover;
  }

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.05);
    final transform = isHover ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(microseconds: 200),
        transform: transform,
        child: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
          width: 300,
          padding: EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(widget.iconData, size: 60, color: Colors.orange),
            SizedBox(height: 25),
            Text(widget.title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            SingleChildScrollView(
                child: Text(widget.detail, textAlign: TextAlign.justify)),
            SizedBox(height: 25),
            Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text("Read More"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
