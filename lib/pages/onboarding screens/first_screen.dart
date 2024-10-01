import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h * 0.08,
          ),
          ////animated lottie asset
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Lottie.network(
                "https://lottie.host/08daec2f-2bb8-43ac-a5dd-b62ffdf12594/kVIa22fLaY.json"),
          ),

          SizedBox(
            height: h * 0.08,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Welcome to Evento!!",
                style: GoogleFonts.poppins(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: h * 0.02),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                " Welcome to Evento, your go-to app for exploring local events! Whether you’re looking for concerts, workshops, or community gatherings, we’ve got you covered. ",
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
