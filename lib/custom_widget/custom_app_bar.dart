import 'package:flutter/material.dart';
import 'package:flutter_web/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/magtech_icon.jpeg",
              width: 80,
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 80,
                width: 120,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Home", style: kNavBarStyle))),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 80,
                width: 120,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Services", style: kNavBarStyle))),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 80,
                width: 120,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Project", style: kNavBarStyle))),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 80,
                width: 120,
                child: TextButton(
                    onPressed: () {},
                    child: Text("About Us", style: kNavBarStyle))),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 80,
                width: 120,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Contact", style: kNavBarStyle))),
          ],
        ),
      ),
    );
  }
}
