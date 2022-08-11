import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/Widget/Workbox.dart';

import 'MobileWorkBox.dart';

class MobileWork extends StatefulWidget {
  @override
  _MobileWorkState createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height*0.3,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.pink,
                child: Icon(FontAwesomeIcons.houseLaptop),
              ),
              SizedBox(width:10,),
              Container(
                height: size.height/5,
                child: MobileWork2(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
