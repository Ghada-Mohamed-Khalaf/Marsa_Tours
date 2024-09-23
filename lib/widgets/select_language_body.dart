import 'package:flutter/material.dart';

class SelectLanguageBody extends StatelessWidget {
  const SelectLanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("حدد لغة التطبيق",textDirection: TextDirection.rtl,),
          Text("قم باختيار اللغة المناسبة لك لتصفح التطبيق",textDirection: TextDirection.rtl,),
          SizedBox(height: 15,),
          Card(
            child:Column(
              children: [
                Image.asset("assets/images/img_5.png"),
                Text("اللغة العربية")
              ],
            ) ,
          ),

        ],
      ),
    ],

    );
  }
}
