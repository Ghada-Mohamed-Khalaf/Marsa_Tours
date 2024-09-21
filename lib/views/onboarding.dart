import 'package:flutter/material.dart';
import 'package:marsa_tours/widgets/on_boarding_body.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: OnBoardingBody(),


      ),
    );
  }
}
