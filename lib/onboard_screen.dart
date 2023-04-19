import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Intro Page Screen/intropage1.dart';
import 'Intro Page Screen/intropage2.dart';
import 'Intro Page Screen/intropage3.dart';
import 'homepage.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: const [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        Container(
          alignment: const Alignment(-0.7, 0.77),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Color.fromRGBO(112, 112, 112, 1)),
            ),
          ),
        ),
        Container(
          alignment: const Alignment(0.7, 0.75),
          child: SmoothPageIndicator(
              controller: _controller, // PageController
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color.fromRGBO(72, 183, 73, 1),
              ), // your preferred effect
              onDotClicked: (index) {}),
        ),

        //dot_indector
      ],
    ));
  }
}
