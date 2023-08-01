// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names, camel_case_types, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Duplicate_Screen extends StatefulWidget {
  const Duplicate_Screen({super.key});

  @override
  State<Duplicate_Screen> createState() => _Duplicate_ScreenState();
}

class _Duplicate_ScreenState extends State<Duplicate_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Duplicate Photo Cleaner",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(child:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: double.infinity,
              child: Lottie.asset("assets/scaning.json",height: 200,fit: BoxFit.cover),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/picture.png"),
                SizedBox(width: 10,),
                Text(
                    "Duplicate photo cleaner",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Lottie.asset("assets/infiniteloading.json",height: 150),
            ],),
            SizedBox(height: 60,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
                onPressed: (){_StopLoading();}, child: const Text(
              "Stop Loading ",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            )),
          ],
        ),
      )),
    );
  }
  Future<void> _StopLoading () async {
    return showDialog(
        context: context,
        builder: (BuildContext  context){
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Stop Loading",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Are you sure you want to stop the Stop Loading?"),
                  Lottie.asset("assets/worning.json",
                    animate: true,
                    height: 100,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
              }, child: Text(
                  "STOP LOADING ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "CONTINUE LOADING ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )
              )
              )],
          ) ;
        });
  }
}
