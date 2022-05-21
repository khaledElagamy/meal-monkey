import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:my_app2/screens/login/view.dart';

class AfterSplashScreen extends StatefulWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  _AfterSplashScreenState createState() => _AfterSplashScreenState();
}

class _AfterSplashScreenState extends State<AfterSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 470.h,
              child: Stack(
                children: [
                  Image.asset(

                    'assets/images/shaped.png',
                    height: 370.h,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 185.h,
                      width: 218.w,
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 44.r,
            ),
             Text(
              'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.sp, color: const Color(0xff7C7D7E)),
            ),
             SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(height: 56.h,width: 307.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),),);
                  },
                  child: const Text('login'),
                ),
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(height: 56.h,width: 307.w,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Create an Account'),
                ),
              ),
            ),
             SizedBox(
              height: 26.h,
            ),
          ],
        ),
      ),
    );
  }
}
