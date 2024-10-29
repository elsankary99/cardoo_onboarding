import 'package:cardo_onboarding/on_boarding/widgets/bottom_section.dart';
import 'package:cardo_onboarding/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFF1E4292),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              child: Image.asset(
                'assets/cyan.png',
                height: size.height * .66,
                width: size.width,
                fit: BoxFit.cover,
              )),
          const SkipButton(),
          const Positioned(
              bottom: 0, right: 0, left: 0, child: BottomSection()),
          Positioned(
              left: 0,
              right: 0,
              top: size.height * 0.112,
              child: Image.asset(
                'assets/2_WATCHES.gif',
                height: size.height * .83,
                width: double.infinity,
              ))
        ],
      ),
    );
  }
}
