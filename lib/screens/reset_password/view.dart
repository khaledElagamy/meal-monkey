import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Align(
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: const Color(0xff4A4B4D), fontSize: 30.sp),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Please enter your email to receive a\nlink to  create a new password via email',
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
                    decoration: const InputDecoration(labelText: 'Email'),
                    style: TextStyle(
                      color:const Color(0xffB6B7B7),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 34.r,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'send12',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
