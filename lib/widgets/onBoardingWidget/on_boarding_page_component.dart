import 'package:flutter/material.dart';

import '../commonWidget/vertical_spacing.dart';

class OnBoardingPageComponent extends StatelessWidget {
  final Color colors;
  final String topImage;
  final String title;
  final String subtitle;
  final Color textColor;

  const OnBoardingPageComponent(
      {super.key,
      required this.colors,
      required this.topImage,
      required this.title,
      required this.subtitle,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: colors,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            topImage,
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const VerticalSpacing(height: 10),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          // Text(pageCount),
          const VerticalSpacing(height: 20)
        ],
      ),
    );
  }
}
