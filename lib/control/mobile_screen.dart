import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Median or Small Screen is Under Development\nWill create soon",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
