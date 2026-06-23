import 'package:all_assignment/Assignment-13/AssignPages13/Details.dart';
import 'package:all_assignment/Assignment-13/AssignPages13/Home.dart';
import 'package:all_assignment/Assignment-13/AssignPages13/fontPage.dart';
import 'package:flutter/material.dart';
import 'package:all_assignment/LiveTest/liveTestUI.dart';

class Assignment13 extends StatelessWidget {
  const Assignment13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LiveTestUi(),
      // Fontpage(),
    //   initialRoute: 'fontpage',
    //   routes: {
    //     'fontpage' : (context) => Fontpage(),
    //     'home' : (context) => Home13(number: null, onIncrement: () {  }, OnDecrement: () {  },),
    //     'details' : (context) => Details13(),
    //   },
    );
  }
}
