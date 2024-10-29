import 'package:cardo_onboarding/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: TextButton(
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const WelcomePage()),
            (Route<dynamic> route) => false,
          ),
          child: Text(
            "Skip",
            style: textTheme.titleMedium!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
