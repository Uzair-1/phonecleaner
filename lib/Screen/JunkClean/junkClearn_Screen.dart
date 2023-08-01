// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, file_names, non_constant_identifier_names

import 'package:cleanerinternday2/Screen/JunkClean/Complete_junkClearn.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../completeScreen_Scan.dart';
import 'junkHome_Screen.dart';

class Junkclearn_Screen extends StatefulWidget {
  const Junkclearn_Screen({super.key});

  @override
  State<Junkclearn_Screen> createState() => _Junkclearn_ScreenState();
}

class _Junkclearn_ScreenState extends State<Junkclearn_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          physics: ClampingScrollPhysics(),
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
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 30),
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
                          center: Text(
                            "100%",
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                  onPressed: (){
                    _StopScan2();
                  }, child: const Text(
                'Stop Scan',
                style: TextStyle(
                  fontSize: 24,
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
  Future<void> _StopScan2 () async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
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
              TextButton(onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Junk_Clearn()));
              }, child: Text(
                  "STOP SCAN ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text(
                  "CONTINUE SCAN ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )
              )
              )
            ],
          );
        });
  }
}
