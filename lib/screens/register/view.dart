import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:my_app2/screens/login/view.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40.r,
              ),
              Align(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: const Color(0xff4A4B4D), fontSize: 30.sp),
                ),
              ),
              SizedBox(
                height: 12.r,
              ),
              Text(
                'Add your details to sign up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff7C7D7E),
                ),
              ),
              SizedBox(
                height: 36.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  width: 307.w,
                  height: 56.h,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Name'),
                    style: TextStyle(
                      color: const Color(0xffB6B7B7),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  width: 307.w,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xffB6B7B7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  width: 307.w,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Mobile No'),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xffB6B7B7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  width: 307.w,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Address'),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xffB6B7B7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.r,
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
                height: 28.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  width: 307.w,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Confirm Password'),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xffB6B7B7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                ),
              ),
              SizedBox(
                height: 24.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
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
                            builder: (context) => const LoginScreen(),
                          ),);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
