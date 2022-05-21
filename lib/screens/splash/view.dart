import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:my_app2/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.images.bg.path

            ),
          ),
        ),
        child: Center(
          child: FadeInUpBig(
            child: Image.asset(
              'assets/images/logo.png',
              height: 185.h,
              width: 218.w,
            ),
          ),
        ),
      ),
    );
  }
}
