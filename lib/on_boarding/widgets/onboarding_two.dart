import 'package:cardo_onboarding/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: const Color(0xFF1E4292),
      child: Stack(
        children: [
          Positioned(
              top: size.height * 0.26,
              child: Image.asset(
                'assets/magenta.png',
                height: size.height * .66,
                width: size.width,
                fit: BoxFit.cover,
              )),
          Positioned(
              top: size.height * 0.082,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      width: size.width * 0.13,
                      'assets/cardoo_logo.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    const SizedBox(height: 28),
                    Text(
                      'CardoO Buds',
                      style: textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Your gateway to seamless smart device management. Connect, control, and track all your devices effortlessly, right from the app.',
                      textAlign: TextAlign.center,
                      style: textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          height: 2,
                          color: const Color(0xFFDADADA)),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )),
          const SkipButton(),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: size.height * 0.33,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.vertical(
                        top: Radius.circular(20))),
              )),
          PositionedDirectional(
            top: size.height * 0.33,
            start: size.width * 0.1,
            child: SvgPicture.asset(
              'assets/buds_features.svg',
              height: size.height * .22,
              width: size.width * 0.45,
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: size.height * 0.1,
              child: Image.asset(
                'assets/BUDS_GIF.gif',
                width: double.infinity,
                height: size.height * 0.84,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
