import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  get errorController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 55.r),
              Align(
                child: Text(
                  'We have sent an OTP to\nyour Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff4A4B4D),
                    fontSize: 25.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 10.r,
              ),
              Text(
                'Please check your mobile number 071*****12\ncontinue to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff7C7D7E),
                ),
              ),SizedBox(height: 54.r,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 34),
                child: PinCodeTextField(backgroundColor: Colors.white,
                  appContext: context,
                  length: 4,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 50.h,
                      fieldWidth: 50.w,
                      inactiveColor: Colors.grey,activeColor: Colors.grey),
                ),
              ),SizedBox(height: 36.r,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ),SizedBox(height: 32.r,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Receive?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff7C7D7E),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
