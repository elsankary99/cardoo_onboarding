import 'package:cardo_onboarding/on_boarding/widgets/curser_points.dart';
import 'package:cardo_onboarding/on_boarding/widgets/onboarding_one.dart';
import 'package:cardo_onboarding/on_boarding/widgets/onboarding_three.dart';
import 'package:cardo_onboarding/on_boarding/widgets/onboarding_two.dart';
import 'package:cardo_onboarding/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  final pageViewController = PageController(initialPage: 0);
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  final pages = [
    const OnboardingOne(),
    const OnboardingTwo(),
    const OnboardingThree()
  ];
  final bluerColor = [
    'assets/cyan.png',
    'assets/magenta.png',
    'assets/green.png'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bluerSpace = [
      0,
      size.height * 0.26,
      size.height * 0.16,
    ];
    return Scaffold(
        body: Container(
      color: const Color(0xFF1E4292),
      child: Stack(
        children: [
          Positioned(
              top: bluerSpace[currentIndex].toDouble(),
              child: Image.asset(
                bluerColor[currentIndex],
                height: size.height * .66,
                width: size.width,
                fit: BoxFit.cover,
              )),
          const SkipButton(),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              height: size.height * 0.33,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(20))),
            ),
          ),
          Positioned.fill(
            child: PageView(
              onPageChanged: (value) => setState(() => currentIndex = value),
              controller: pageViewController,
              children: pages,
            ),
          ),
          CurserPoints(
            length: pages.length,
            currentIndex: currentIndex,
          )
        ],
      ),
    ));
  }
}
