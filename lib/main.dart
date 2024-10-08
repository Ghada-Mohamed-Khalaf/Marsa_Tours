import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marsa_tours/views/login_view.dart';
import 'package:marsa_tours/views/splash_view.dart';

import 'package:marsa_tours/widgets/on_boarding_body.dart';
import 'package:marsa_tours/widgets/select_language_body.dart';

void main()


  async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();



  runApp (


    EasyLocalization(
        supportedLocales: [Locale('en', 'ar'),],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child:  DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => MarsaTours(), // Wrap your app

        ),
    ),
  );
  }



class MarsaTours extends StatelessWidget {
  const MarsaTours({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
          return  MaterialApp(
      debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,

            builder: DevicePreview.appBuilder,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
      home: SelectLanguageBody(),
    );
  }
    );
}
}

