// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 60),
        Text(
          'Best Quality',
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Color.fromRGBO(112, 112, 112, 1)),
        ),
        SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(
            'Grocery',
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromRGBO(1, 145, 2, 1),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Door to Door',
            style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                fontSize: 30,
                color: Color.fromRGBO(112, 112, 112, 1)),
          )
        ]),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/Images/slide 3rd image.svg",
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
