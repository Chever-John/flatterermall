import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/values/assets.dart';
import 'package:nectar/values/base_colors.dart';
import 'package:nectar/widgets/buttons/nectar_button.dart';
import 'dart:ui' as ui;

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image.asset(
          //   PNGs.imgOnboardBG,
          //   fit: BoxFit.cover,
          // ),
          generateBluredImage(),
          Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(" hello everyone I am "),

                  ],
                ),
                Text(
                  "John Chever",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: BaseColors.accentColor,
                  ),
                ),
                Text(
                  'Welcome to flatterer mall',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 48,
                    color: BaseColors.gray1,
                  ),
                ),
                Text(
                  "'Ger your exclusive flatterer ASAP'",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    // color: BaseColors.white.withOpacity(0.7),
                    color: BaseColors.gray1,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    NectarButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/home',
                              (_) => false,
                        );
                      },
                      text: 'Get Started',
                    ),
                  ],
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget generateBluredImage() {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/pngs/img_onboard_690x1000.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      //I blured the parent container to blur background image, you can get rid of this part
      child: new BackdropFilter(
        filter: new ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: new Container(
          //you can change opacity with color here(I used black) for background.
          decoration: new BoxDecoration(color: Colors.black.withOpacity(0.2)),
        ),
      ),
    );
  }
}
