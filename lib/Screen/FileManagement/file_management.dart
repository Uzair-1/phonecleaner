// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/FileManagement/fileManagement_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'complete_scan.dart';

class FileManagement_Screen extends StatefulWidget {
  const  FileManagement_Screen({super.key});

  @override
  State<FileManagement_Screen> createState() => _FileManagement_ScreenState();
}

class _FileManagement_ScreenState extends State<FileManagement_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "File Management",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FileManagement()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                     Lottie.asset("assets/searchfile.json",
                     height: 300,
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FileStop_Scan()));
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
