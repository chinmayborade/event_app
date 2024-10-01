import 'package:event_app/pages/onboarding%20screens/first_screen.dart';
import 'package:event_app/pages/onboarding%20screens/second_screen.dart';
import 'package:event_app/pages/onboarding%20screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboradingPage extends StatelessWidget {
  ////controller to keep track on whcih pages we are currntly
  PageController _controller = PageController();

  OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),

          ////dot indicators
          Container(
              alignment: Alignment(0, 0.90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ////skip button
                  Text("Skip"),

                  ////dot indicators
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 20,
                      dotWidth: 20,
                      activeDotColor: Colors.black,
                      dotColor: Colors.grey,
                    ),
                  ),

                  ////next button
                  Text("Next")
                ],
              ))
        ],
      ),
    );
  }
}
