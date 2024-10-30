import 'package:flutter/material.dart';

class CurserPoints extends StatelessWidget {
  final int length;
  final int currentIndex;
  const CurserPoints({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 5,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(length, (i) {
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
        ));
  }
}
