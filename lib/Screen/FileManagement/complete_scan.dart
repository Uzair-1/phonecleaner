// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/FileManagement/file_management.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FileStop_Scan extends StatefulWidget {
  const FileStop_Scan({super.key});

  @override
  State<FileStop_Scan> createState() => _FileStop_ScanState();
}

class _FileStop_ScanState extends State<FileStop_Scan> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FileManagement_Screen()));
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
                      Icon(Icons.file_copy_rounded, size: 30),
                      SizedBox(width: 20),
                      Text(
                          "File Cleaner",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          )
                      )
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
