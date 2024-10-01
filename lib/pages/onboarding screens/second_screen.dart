import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h * 0.03,
          ),
          ////animated lottie asset
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Lottie.network(
                "https://lottie.host/c2a18e2b-63be-4079-b05d-9e37e94840ba/tVw3OMhKSt.json"),
          ),

          SizedBox(
            height: h * 0.08,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Enable Location Access",
                style: GoogleFonts.poppins(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: h * 0.01),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "To help you discover the best events nearby, we need access to your location. Don’t worry—we only use this information to show you what’s happening in your area.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
