import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/Widget/CustomText.dart';
import 'package:myportfolio/Widget/Workbox.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height/2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Current Organisation",
                textsize: 26.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: const Color(0xff303C55),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.pink,
                child: Icon(Icons.work),

              ),
              SizedBox(width: size.width*0.02,),
              Container(
                height: size.height/3,
                child: WorkBox(),
              )
            ],
          ),

        ],
      ),
    );
  }
}
