// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(height: 25),
        Container(
            margin: EdgeInsets.only(left: 50),
            child: const Text(
              'Welcome to',
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Color.fromRGBO(112, 112, 112, 1)),
            )),
        SizedBox(height: 10),
        Container(
            margin: EdgeInsets.only(left: 50),
            child: Row(children: [
              SvgPicture.asset(
                'assets/Images/green logo.svg',
              ),
              SizedBox(width: 10),
              const Text(
                'Application',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color.fromRGBO(112, 112, 112, 1)),
              )
            ])),
        SizedBox(
          height: 80,
        ),
        SvgPicture.asset("assets/Images/slide 1st  image.svg",
            fit: BoxFit.scaleDown),
      ],
    ));
  }
}
