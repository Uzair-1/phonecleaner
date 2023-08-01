// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AntiVirus extends StatefulWidget {
  const AntiVirus ({super.key});

  @override
  State<AntiVirus> createState() => _AntiVirusState();
}

class _AntiVirusState extends State<AntiVirus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Antivirus",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(child:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: double.infinity,
              child: Lottie.asset("assets/antivirus.json",height: 200),
            ),
            SizedBox(height:50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/antiviruspicture.png"),
                SizedBox(width: 10,),
              const Text(
                    "Antivirus",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )
                ),
              ],
            ),
            SizedBox(height: 100,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
                onPressed: (){
                 _StopScan();
                }, child: const Text(
              "Stop Scan ",
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
  Future<void> _StopScan () async {
    return showDialog(
        context: context,
        builder: (BuildContext  context){
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Stop Scan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Are you sure you want to stop the scan?"),
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
                  "STOP SCAN ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "CONTINUE SCAN ",
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
