import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';
import '../../data/on_boarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: controller.onPageChangeCallback,
            liquidController: controller.getLiquidController,
            slideIconWidget: const Icon(Icons.arrow_back),
            enableSideReveal: true,
            pages: List.generate(
              onBoardingPageItemList.length,
              (index) {
                final pageData = onBoardingPageItemList[index];

                return OnBoardingPageComponent(
                  topImage: pageData["topImage"],
                  colors: pageData["colors"],
                  subtitle: pageData["subtitle"],
                  title: pageData["title"],
                  textColor: pageData["textColor"],
                );
              },
            ),
          ),
          Positioned(
            bottom: 70,
            child: ForwardButtonComponent(
              onPressed: () => controller.animateToNextSlide(context),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
                onPressed: () => controller.skipToLastPage(context),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ),
          StreamBuilder(
              stream: controller.getCurrentPage,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Container();
                }
                return Positioned(
                    bottom: 45,
                    child: AnimatedSmoothIndicator(
                        effect: const WormEffect(
                          activeDotColor: Colors.black,
                          dotHeight: 5,
                        ),
                        activeIndex: snapshot.data!,
                        count: 3));
              })
        ],
      ),
    );
  }
}

class ForwardButtonComponent extends StatelessWidget {
  final void Function()? onPressed;
  const ForwardButtonComponent({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          side: const BorderSide(color: Colors.white)),
      child: Container(
        // color: Colors.yellow,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xff272727)),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

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
              VerticalSpacing(height: 10),
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
          VerticalSpacing(height: 20)
        ],
      ),
    );
  }
}
