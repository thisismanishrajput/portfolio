import 'package:flutter/material.dart';
import 'package:myportfolio/Widget/work_custom_data.dart';

class MobileWork2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Techtonic Enterprises Pvt. Ltd \n(Ghaziabad UP)",
          subTitle:
          "Currently Here I am Flutter Developer\n(Android/iOS)",
          duration: "2022 - Present",
        ),
      ],
    );
  }
}
