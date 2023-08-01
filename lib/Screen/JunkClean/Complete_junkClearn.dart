// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:cleanerinternday2/Screen/JunkClean/junkHome_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Junk_Clearn extends StatefulWidget {
  const Junk_Clearn({super.key});

  @override
  State<Junk_Clearn> createState() => _Junk_ClearnState();
}

class _Junk_ClearnState extends State<Junk_Clearn> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>JunkScreen()));
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
          "Junk Cleaner",
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
                      Icon(Icons.delete_forever_outlined, size: 25),
                      SizedBox(width: 20),
                      Text(
                        "Junk Cleaner",
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
