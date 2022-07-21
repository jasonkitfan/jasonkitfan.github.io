// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';
import 'package:flutter_web/custom_widget/icon_detail_services.dart';

class Services extends StatelessWidget {
  Services({Key? key, required this.pixel}) : super(key: key);

  double pixel;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: pixel >= 400 ? 1.0 : 0.0,
      duration: Duration(seconds: 2),
      child: AnimatedPadding(
        padding: EdgeInsets.only(left: pixel >= 400 ? 0 : 300),
        duration: Duration(seconds: 1),
        child: Container(
          child: Column(
            children: [
              Text(
                "WHAT WE PROVIDE",
                style: kTopic,
              ),
              SizedBox(height: 30),
              Text("IoT Solutions", style: kSubTopic),
              SizedBox(height: 50),
              Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconServiceIntro(
                            iconData: Icons.remove_red_eye,
                            title: "CCTV",
                            detail: kDetailCCTV),
                        SizedBox(width: 40),
                        IconServiceIntro(
                            iconData: Icons.sensor_door_outlined,
                            title: "Access Control",
                            detail: kDetailAccessControl),
                        SizedBox(width: 40),
                        IconServiceIntro(
                            iconData: Icons.settings_remote_outlined,
                            title: "Home Automation",
                            detail: kDetailHomeAutomation),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconServiceIntro(
                            iconData: Icons.computer_outlined,
                            title: "Server",
                            detail: kDetailServer),
                        SizedBox(width: 40),
                        IconServiceIntro(
                            iconData: Icons.gamepad_outlined,
                            title: "Virtual Reality",
                            detail: kDetailVR),
                        SizedBox(width: 40),
                        IconServiceIntro(
                            iconData: Icons.currency_exchange_outlined,
                            title: "NFT",
                            detail: kDetailNFT),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
