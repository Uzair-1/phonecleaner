// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, file_names, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:cleanerinternday2/IntroScreen/welcome1.dart';
import 'package:cleanerinternday2/utils/cotrols.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen1()),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                     height: 100,
                     child: SingleChildScrollView(
                       child:  Column(
                         children: [
                           Lottie.asset("assets/animation_lk7zgjtc.json",
                             width: double.infinity,
                             height: 500,
                           ),
                         ],
                       ),
                     )
                 ),
                 Image.asset("assets/applogo.png"),
                 SizedBox(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(
                         "Phone Cleaner",
                         style: TextStyle(
                           fontSize: 44,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   height: MediaQuery.of(context).size.height/10,
                   padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                   width: MediaQuery.of(context).size.width/1.5,
                   child:Center(
                     child: Lottie.asset(
                       "assets/lineloder.json",
                       width: double.infinity,
                       fit: BoxFit.fill,
                     ),
                   ),
                 ),
                 Lottie.asset("assets/animation_lk7zgjtc.json",
                   width: double.infinity,
                   height: 500,
                 ),
               ],
             ),
           ),
        ],
      ),
    );
  }
}

