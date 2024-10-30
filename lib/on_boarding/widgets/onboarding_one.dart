import 'package:cardo_onboarding/on_boarding/widgets/bottom_section.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: BottomSection(),
        ),
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
    );
  }
}
