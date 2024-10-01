import 'package:event_app/pages/navigationbarpages/main_navigationscreen.dart';
import 'package:event_app/pages/profilesetup/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool _isPressed = false;

  void _toggleButton() {
    setState(() {
      _isPressed = !_isPressed; // Toggle the button state
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h * 0.04,
          ),
          ////animated lottie asset
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Lottie.network(
                "https://lottie.host/62a43c2f-100e-46e3-8195-f1aaea434539/2Oy9Za2XZt.json"),
          ),

          SizedBox(
            height: h * 0.01,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Choose Your Interests",
                style: GoogleFonts.poppins(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                " From music festivals to art exhibitions, we have something for everyone! Select your favorite event categories so we can personalize your experience and keep you updated on what you love. ",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(
            height: h * 0.03,
          ),

          InkWell(
            onTap: () {
              _toggleButton();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()),
              );
            },
            child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInCirc,
                width: _isPressed ? 250 : 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
