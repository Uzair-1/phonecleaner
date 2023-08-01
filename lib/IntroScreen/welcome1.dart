// ignore_for_file: prefer_const_constructors

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:cleanerinternday2/utils/cotrols.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen1 extends StatefulWidget {
  const WelcomeScreen1({super.key});

  @override
  State<WelcomeScreen1> createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends State<WelcomeScreen1> {
  @override
  Widget build(BuildContext context) {
    CleanerControls.height = MediaQuery.of(context).size.height;
    CleanerControls.width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: CleanerControls.height,
          width: CleanerControls.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                        color: Color(0xff1b4ad0),
                    )
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                    "Phone Cleaner",
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                    )
                )
              ],
            ),
            const SizedBox(height: 60,),
            Container(
              child: Lottie.asset("assets/animation_lk6sq8zu.json",
                height: 250,
                width: double.infinity,
                repeat: true,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 150,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              )
            ),
              onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              }, child: const Text(
            'Get Started',
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          )),
          ],
        ),
        )
      ),
    ));
  }
}
