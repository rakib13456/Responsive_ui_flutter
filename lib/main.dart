import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
            designSize:Size(360,690),
            builder : (context,child){
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: HomeScreen(),
              );
            }
    );
  }
}