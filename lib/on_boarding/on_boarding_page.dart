import 'package:cardo_onboarding/on_boarding/widgets/onboarding_one.dart';
import 'package:cardo_onboarding/on_boarding/widgets/onboarding_three.dart';
import 'package:cardo_onboarding/on_boarding/widgets/onboarding_two.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: PageView(
            onPageChanged: (value) => setState(() => currentIndex = value),
            controller: pageViewController,
            children: pages,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 5,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(pages.length, (i) {
                  final isCurrent = currentIndex == i;
                  return AnimatedContainer(
                    margin: const EdgeInsetsDirectional.only(end: 6),
                    duration: const Duration(milliseconds: 250),
                    width: isCurrent ? 25 : 15,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(3),
                      color: isCurrent
                          ? const Color(0xff2A3890)
                          : const Color(0xffD9D9D9),
                    ),
                  );
                }),
              ),
            ))
      ],
    ));
  }
}
