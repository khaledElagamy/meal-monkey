import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app2/generated/codegen_loader.g.dart';
import 'package:my_app2/helper/color.dart';
import 'package:my_app2/screens/after_splash/view.dart';
import 'package:my_app2/screens/login/view.dart';
import 'package:my_app2/screens/new_password/view.dart';
import 'package:my_app2/screens/on_boarding/view.dart';
import 'package:my_app2/screens/pin_code/view.dart';
import 'package:my_app2/screens/register/view.dart';
import 'package:my_app2/screens/reset_password/view.dart';
import 'package:my_app2/screens/splash/view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'assets/langs',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('ar'),
      assetLoader: CodegenLoader(),
      startLocale: Locale('en'),
      saveLocale: true,
      child: ScreenUtilInit(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: buildMaterialColor(
              const Color(0xffFC6011),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                    side: BorderSide.none),
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xffF2F2F2)),
          ),
          home: PageView(
            children: const [
              SplashScreen(),
              AfterSplashScreen(),
              LoginScreen(),
              RegisterScreen(),
              ResetScreen(),
              NewPasswordScreen(),
              OnBoardingScreen(),
              PinCodeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
