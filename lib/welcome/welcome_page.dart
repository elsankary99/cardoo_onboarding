import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
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
          PositionedDirectional(
            end: 20,
            child: SafeArea(
              child: SvgPicture.asset(
                width: size.width * 0.24,
                'assets/cardoo.svg',
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: size.height * 0.42,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.vertical(
                        top: Radius.circular(20))),
                child: SafeArea(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Cardoo!',
                      style: textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF1E4292)),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'We’re excited to have you with us. Get ready to manage your smart devices . Let’s begin!',
                      textAlign: TextAlign.center,
                      style: textTheme.labelLarge!.copyWith(
                          height: 2,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA0A3BD)),
                    ),
                    const SizedBox(height: 26),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2A3890)),
                        child: Text(
                          'Create an account',
                          style: textTheme.titleMedium!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEDEFF5)),
                        child: Text(
                          'Log in',
                          style: textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                )),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: size.height * 0.1,
              child: Image.asset(
                'assets/2_BUDS_WITH_WATCH.gif',
                height: size.height * 0.83,
                width: size.width,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
