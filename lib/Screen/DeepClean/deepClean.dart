// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home.dart';

class DeepScreen extends StatefulWidget {
  const DeepScreen({super.key});

  @override
  State<DeepScreen> createState() => _DeepScreenState();
}

class _DeepScreenState extends State<DeepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Deep cleaner",
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
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: double.infinity,
                    child: Lottie.asset("assets/deepscanning.json"),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child:ListView(
                      children: [
                        ListTile(
                          title:Text(
                              "Select all",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              )
                          ),
                        ),
                         Divider(),
                         SingleChildScrollView(
                           child: Container(
                             height: MediaQuery.of(context).size.height,
                             width: double.infinity,
                             child: Column(
                               children: [
                                 ListTile(
                                   leading: Image.asset("assets/picture.png"),
                                   title: Text(
                                       "Photos",
                                       style: TextStyle(
                                         fontSize: 16,
                                         color: Colors.blueAccent,
                                         fontWeight: FontWeight.w600,
                                       )
                                   ),
                                   subtitle: Text(
                                       "1.2 MB",
                                       style: TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w300,
                                       )
                                   ),
                                   onTap: (){},
                                 ),
                                 Divider(),
                                 ListTile(
                                   leading: Image.asset("assets/video.png"),
                                   title:const Text(
                                       "Vedio",
                                       style: TextStyle(
                                         fontSize: 16,
                                         color: Colors.blueAccent,
                                         fontWeight: FontWeight.w600,
                                       )
                                   ),
                                   subtitle: Text(
                                       "3 GB",
                                       style: TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w300,
                                       )
                                   ),
                                   onTap: (){},
                                 ),
                                 Divider(),
                                 ListTile(
                                   leading: Image.asset("assets/folder.png"),
                                   title: Text(
                                       "Documents",
                                       style: TextStyle(
                                         fontSize: 16,
                                         color: Colors.blueAccent,
                                         fontWeight: FontWeight.w600,
                                       )
                                   ),
                                   subtitle: Text(
                                       "67.8 MB",
                                       style: TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w300,
                                       )
                                   ),
                                   onTap: (){},
                                 ),
                                 Divider(),
                                 ListTile(
                                   leading: Image.asset("assets/download.png"),
                                   title:Text(
                                       "Download",
                                       style: TextStyle(
                                         fontSize: 16,
                                         color: Colors.blueAccent,
                                         fontWeight: FontWeight.w600,
                                       )
                                   ),
                                   subtitle: Text(
                                       "2 GB",
                                       style: TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w300,
                                       )
                                   ),
                                   onTap: (){},
                                 ),
                                 Padding(padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                                   child:  GestureDetector(
                                     child: Container(
                                       height: 50,
                                       decoration: BoxDecoration(
                                         color: Color(0xff1b4ad0),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: Center(
                                           child: Text(
                                               "Stop Scan",
                                               style: TextStyle(
                                                 fontSize: 24,
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.w500,
                                               )
                                           )
                                       ),
                                     ),
                                     onTap: (){_StopScan();},
                                   ),
                                 )
                               ],
                             ),
                           )
                         ),
                      ],
                    ),
                  ),

                ]),
          )
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
