// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, camel_case_types, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Notification_Cleaner_Screen extends StatefulWidget {
  const Notification_Cleaner_Screen({super.key});

  @override
  State<Notification_Cleaner_Screen> createState() => _Notification_Cleaner_ScreenState();
}

class _Notification_Cleaner_ScreenState extends State<Notification_Cleaner_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Notification Cleaner",
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
             Padding(padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text("Hide the notification and clean them",style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),),
                  ],
                ),
              ),
            Container(
              height: MediaQuery.of(context).size.height/1.8,
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/notificationsremover.json",height: 400),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100),
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
              'TRY NOW',
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            )),
          ],
        ),
      ),
    ));
  }
  Future<void> _StopScan () async {
    return showDialog(
        context: context,
        builder: (BuildContext  context){
          return AlertDialog(
            elevation: 0,
            title:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Allow notification access ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Lottie.asset("assets/worning.json",
                    animate: true,
                    height: 100,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "No ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "Yes",
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
