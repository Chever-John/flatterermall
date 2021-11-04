import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/onboarding/onboarding_screen.dart';
import 'package:nectar/values/assets.dart';
import 'package:nectar/values/base_colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 222, 179),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'icNectorWhiteSplashToOnBoard',
              child: SvgPicture.asset(SVGs.icNectorWhite),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No FLATTER',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: BaseColors.white,
                    fontSize: 38,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "'flatterererer' store",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: BaseColors.white,
                    fontSize: 14,
                    wordSpacing: 5.5,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
