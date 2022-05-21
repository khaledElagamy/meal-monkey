import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40.r,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'New Password',
                    style: TextStyle(
                        color: const Color(0xff4A4B4D), fontSize: 30.sp),
                  ),
                ),
                SizedBox(
                  height: 12.r,
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
                      decoration:const InputDecoration(labelText: 'New Password'),
                      style: TextStyle(
                        color:const Color(0xffB6B7B7),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.r,
                ),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 34),
                  child: SizedBox(
                    width: 307.w,
                    height: 56.h,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Confirm Password'),
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
                    height: 56.r,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
