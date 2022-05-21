import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:my_app2/screens/on_boarding/view.dart';
import 'package:my_app2/screens/register/view.dart';
import 'package:my_app2/screens/reset_password/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 70.r,
              ),
              Align(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: const Color(0xff4A4B4D), fontSize: 30.sp),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                child: Text(
                  'Add your details to login',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff7C7D7E),
                  ),
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  width: 307.w,
                  height: 56.h,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Your Email'),
                    style: TextStyle(
                      color: const Color(0xffB6B7B7),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  width: 307.w,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xffB6B7B7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen(),
                          ));
                    },
                    child: const Text('login'),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Color(0xff7C7D7E),
                  ),
                ),
              ),
              SizedBox(
                height: 49.h,
              ),
              const Text(
                'or Login With',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff7C7D7E),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Container(
                width: 315.w,
                height: 55.h,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff367FC0),
                  ),
                  icon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 32),
                    child: Image.asset(
                      'assets/icons/fb.png',
                      height: 18.h,
                      width: 18.w,
                    ),
                  ),
                  label: const Text('Login with Facebook'),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Container(
                width: 315.w,
                height: 55.h,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffDD4B39),
                  ),
                  icon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 32),
                    child: Image.asset(
                      'assets/icons/google.png',
                      height: 18.h,
                      width: 18.w,
                    ),
                  ),
                  label: const Text('Login with Google'),
                ),
              ),
              SizedBox(
                height: 83.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff7C7D7E),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
