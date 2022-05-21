import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'package:my_app2/screens/on_boarding/controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 112.r,
              ),
              SizedBox(
                height: 313.h,
                child: PageView(
                  onPageChanged: (value) {
                    controller.currentIndex = value;
                    setState(() {});
                  },
                  children: List.generate(
                    controller.images.length,
                    (index) =>
                        Image.asset(controller.images[controller.currentIndex]),
                  ),
                ),
              ),
              SizedBox(
                height: 32.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                  (index) => Container(
                    height: 10.h,
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: CircleAvatar(
                      backgroundColor: index == controller.currentIndex
                          ? Colors.orange
                          : const Color(0xffD6D6D6),
                      radius: 3.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.r,
              ),
              Text(
                controller.firstText[controller.currentIndex],
                style: TextStyle(fontSize: 28.sp),
              ),
              SizedBox(height: 33.r),
              Text(
                controller.secondText[controller.currentIndex],
                style: TextStyle(
                  fontSize: 13.sp,
                  color: const Color(0xff7C7D7A),
                ),
              ),
              SizedBox(
                height: 40.r,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(double.infinity, 56.h),
                    ),
                    onPressed: () {
                      setState(() {});
                      if (controller.currentIndex < 2) {
                        controller.currentIndex++;
                      }
                    },
                    child: Text(
                      controller.outLinedButtonText[controller.currentIndex],
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
