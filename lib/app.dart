import 'package:all_assignment/Assignment-15/personalProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Assignment-14/studentProfile.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  return ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Personalprofile',
        routes: {
          'StudentprofileA' : (context) => StudentprofileA(),
          'Personalprofile' : (context) => Personalprofile(),
        },
      );
    }
  );

  }
}
