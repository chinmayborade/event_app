import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:event_app/pages/onboarding%20screens/onborading_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splash: 'lib/assets/Evento.png',
          centered: true,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
          splashIconSize: 2000,
          duration: 3100,
          nextScreen: OnboradingPage()),
    );
  }
}
