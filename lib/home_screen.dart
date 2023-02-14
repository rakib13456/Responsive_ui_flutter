import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List question = [
  'Lodding.....',
  'What Is flutter?',
  'How to used in flutter',
  'What is your name'
];

class _HomeScreenState extends State<HomeScreen> {
  final currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.quiz,
                    size: 50.w,
                  ),
                  Container(
                    height: 20.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('Record Their Answer')),
                  )
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Text(
                  'Grow closer to your loved ones \n by asking them this questions'),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                flex: 0,
                child: Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    question[currentIndex],
                    style: TextStyle(fontSize: 15.sp),
                  )),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 110.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      children: [Icon(Icons.copy), Text('copy this question')],
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 110.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      if (question==2) {
                        currentIndex + 1;
                        print('dose not work');
                      } else {
                        print('Finish List');
                      }
                    },
                    child: Row(
                      children: [Icon(Icons.repeat), Text('Try another one')],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
