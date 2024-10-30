import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      width: double.infinity,
      height: size.height * 0.33,
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            width: size.width * 0.13,
            'assets/cardoo_logo.svg',
          ),
          Text(
            'CardoO Watch',
            style: textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w800, color: const Color(0xFF1E4292)),
          ),
          Text(
            'Stay connected, track workouts, monitor health, and customize watch faces with long battery life.',
            textAlign: TextAlign.center,
            style: textTheme.labelLarge!.copyWith(
                height: 2,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFA0A3BD)),
          ),
          const SizedBox(
            height: 14,
          )
        ],
      )),
    );
  }
}
