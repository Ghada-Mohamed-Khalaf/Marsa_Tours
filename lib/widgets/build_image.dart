import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return  Image(image: AssetImage(image),width: 360,height: 360,);
  }
}
