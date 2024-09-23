import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:marsa_tours/views/login_view.dart';
import 'package:marsa_tours/widgets/build_image.dart';
import 'package:marsa_tours/widgets/custom_button.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key,});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                  title: "Numerous free trial courses",
                  body: "Free courses for you to find your way to learning",
                  image: const BuildImage(
                    image: "assets/images/img.png",
                  )),
              PageViewModel(
                  title: "Quick and easy learning",
                  body: "Easy and fast learning at any time to help you improve various skills",
                  image: const BuildImage(
                    image: "assets/images/img_2.png",
                  )),
              PageViewModel(
                  title: "Create your own study plan",
                  body: "Study according to the study plan, make study more motivated",
                  image: const BuildImage(
                    image: "assets/images/img_1.png",


                  )),

            ],

            next:CustomButton(onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return const LoginView();
 
  }));
            }, text: 'ابدالان',
          ),
      ),
      ),
    );
  }
}