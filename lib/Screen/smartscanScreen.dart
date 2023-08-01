// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:cleanerinternday2/Screen/completeScreen_Scan.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';


class SmartScan extends StatefulWidget {
  const SmartScan({Key? key}) : super(key: key);

  @override
  State<SmartScan> createState() => _SmartScanState();
}

class _SmartScanState extends State<SmartScan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xE0E0E0FF),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
                ),
                child: SingleChildScrollView(
                  child: Padding(padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      CircularPercentIndicator(
                        radius: 100,
                        lineWidth: 20,
                        percent: 1.0,
                        animation: true,
                        animationDuration: 3000,
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff1b4ad0),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: const Text(
                          "100%",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
              ),
              const SizedBox(height: 50),
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
                'Stop Scan',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              )),
            ],
          ),
        ),
      ),
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const complete_Scan()));
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
