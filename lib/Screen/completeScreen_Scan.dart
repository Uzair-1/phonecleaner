// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class complete_Scan extends StatefulWidget {
  const complete_Scan({super.key});

  @override
  State<complete_Scan> createState() => _complete_ScanState();
}

class _complete_ScanState extends State<complete_Scan> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Phone Cleaner",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           SingleChildScrollView(
             child: Container(
               width: double.infinity,
               height: 200,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Lottie.asset(
                     "assets/animation_lk9ceddj.json",
                     animate: true,
                   ),
                 ],
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
             height: MediaQuery.of(context).size.height/2,
             width: double.infinity,
             child:  Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.verified_user_outlined, size: 25),
                     SizedBox(width: 20),
                     Text(
                       "Smart Phone Cleaner",
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                   ],
                 ),
                 Text(
                     "successfully complete the scan",
                     style: TextStyle(
                       fontSize: 13,
                       fontWeight: FontWeight.w300,
                     )
                 )
               ],
             ),
           ),
          ],
        ),
      ),
    ));
  }
}
