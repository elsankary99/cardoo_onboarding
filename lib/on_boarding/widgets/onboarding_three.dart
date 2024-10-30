import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
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
                    'CardoO Scale',
                    style: textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'The Cardoo app provides comprehensive analysis of 28 health indicators, features durable tempered glass, and has a battery life of up to 4 months with regular use.',
                    textAlign: TextAlign.center,
                    style: textTheme.labelLarge!.copyWith(
                      height: 2,
                      color: const Color(0xFFDADADA),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            top: size.height * 0.03,
            child: Image.asset(
              'assets/2_scale.gif',
              height: size.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}
