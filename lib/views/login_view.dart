import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("تغير اللغه "),
        centerTitle: false,
        leading: Image.asset("assets/images/img_5.png"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Text(
                  "تسجيل الدخول",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              "قم بادخال رقم الجوال لتسجيل الدخول او انشاء حساب جديد, سيصلك على الجوال كود التحقق يرجى ادخاله لتسجيل الدخول",
              textDirection: TextDirection.rtl,
              maxLines: 2,
              style: TextStyle(
                inherit: false,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 30),
            const TextField(



              decoration: InputDecoration(labelText: "رقم الجوال",
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),

                border: OutlineInputBorder(



            ),
            ),
            ),
          ],
            ),
        ),

    );
  }
}
