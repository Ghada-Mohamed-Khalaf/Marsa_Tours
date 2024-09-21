import 'package:flutter/material.dart';
import 'package:marsa_tours/views/splash_view.dart';
import 'package:marsa_tours/widgets/on_boarding_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingBody(),
    );
  }
}

