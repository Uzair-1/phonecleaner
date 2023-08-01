
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last, sized_box_for_whitespace, non_constant_identifier_names

import 'package:cleanerinternday2/Screen/AntiVirus/anitvirusScreen.dart';
import 'package:cleanerinternday2/Screen/Component/Reuseable_Container.dart';
import 'package:cleanerinternday2/Screen/DeepClean/deepClean.dart';
import 'package:cleanerinternday2/Screen/DuplicatephotoCleaner/Duplicate_PhotoCleaner.dart';
import 'package:cleanerinternday2/Screen/FileManagement/fileManagement_Screen.dart';
import 'package:cleanerinternday2/Screen/FileManagement/file_management.dart';
import 'package:cleanerinternday2/Screen/NotificationClean/Notification_cleaner.dart';
import 'package:cleanerinternday2/Screen/app_Manager.dart';
import 'package:cleanerinternday2/Screen/JunkClean/junkHome_Screen.dart';
import 'package:cleanerinternday2/Screen/notification_Screen.dart';
import 'package:cleanerinternday2/Screen/smartscanScreen.dart';
import 'package:cleanerinternday2/SettingsScreen/aboutus.dart';
import 'package:cleanerinternday2/SettingsScreen/setting.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/cotrols.dart';
import 'Component/Reuseable_Row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    CleanerControls.height = MediaQuery.of(context).size.height;
    CleanerControls.width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
     appBar: AppBar(
       centerTitle: true,
       elevation: 0,
       actions: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: GestureDetector(
          onTap: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>notificationScreen()));
          },
          child: Icon(Icons.notifications_none_sharp),
        ),
        ),
       ],
       title: Text(
           "Phone Cleaner",
           style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w700,
           )
       ),
     ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 260,
                              child:  Center(
                                child: Stack(
                                alignment: Alignment.center,
                                  children: [
                                  Lottie.asset(
                                    "assets/animation_lk80pbcn.json",
                                    height: 300,
                                    width: double.infinity,
                                  ),
                                    Positioned(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SmartScan()));
                                        },
                                         child: Text(
                                           "start scan",
                                           style: TextStyle(
                                             fontSize: 17,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w500,
                                           )
                                       ),
                                      ),
                                      top: 120,
                                    ),
                                  ],
                                ),
                             ),
                            ),
                          ],
                        ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child:     Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "63%",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff1b4ad0),
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                                "20GB",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                          child:Row(
                            children: [
                              Text(
                                  "Used space",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff1b4ad0),
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                      "Free space",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                  )
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1 ,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.vertical(top: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              "MORE TOOL",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ],
                      ),
                     const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/recyclebin.png"),onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>JunkScreen()));},),
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/android.png"),onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AppManagerScreen()));},),
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/smartphone.png"),onTap: (){_AllowDeppClean();},),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReusableRow(texts: ['Junk Clean',],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: [' App Manager',],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: [' Deep Clean'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         GestureDetector(child:  CircularImageContainer(imagePath: "assets/secure.png"),onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AntiVirus()));},),
                         GestureDetector(child:  CircularImageContainer(imagePath: "assets/archive.png"),onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FileManagement()));},),
                         GestureDetector(child:  CircularImageContainer(imagePath: "assets/silent.png"),onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Notification_Cleaner_Screen()));},),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReusableRow(texts: ['      Antivirus\n      Clean'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: ['           File\n           Management'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: [' Notification\n Clean'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/picture.png"),onTap: (){_AllowDupliacte();},),
                        ],
                      ),

                      const SizedBox(height: 10,),
                      Center(
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableRow(texts: ['Duplication\nPhoto clean'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Expanded(
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/4,
                color: Colors.black,
                child: Row(
                  children: [
                  Container(
                    color: Colors.white,
                    height: 110,
                    child:   Image.asset("assets/applogo.png"),
                  ), SizedBox(width: 20,),
                    Text(
                        "Phone Cleaner",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        )
                    )
                  ],
                ),

              ),
              SizedBox(height: 50,),
              ListTile(
                onTap: (){},
                title: Text(
                  "RATE US",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )
              )
              ),
              Divider(),
              ListTile(
                onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingScreen()));},
                title: Text(
                    "Setting ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )
                )
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text(
                    "Policy ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )
                )
              ),
              Divider(),
              ListTile(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AboutUsScreen()));
                },
                title: Text(
                    "About us ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )
                )
              ),
            ],
          ),
        ),
      ) ,
    ));
  }
  Future<void> _AllowDupliacte() async {
    return showDialog(
        context: context,
        builder: (BuildContext  context){
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Duplication Photo cleaner",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Allow to access the gallery? ",),
                  Lottie.asset("assets/imagescan.json",height: 200),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "NO ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Duplicate_Screen()));
              }, child: Text(
                  "YES",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )
              )
              )],
          ) ;
        });
  }
  //.......................

  Future<void> _AllowDeppClean() async {
    return showDialog(
        context: context,
        builder: (BuildContext  context){
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Deep cleaner",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Allow phone cleaner to access photo and media on your device? ",),
                  Lottie.asset("assets/deepclean.json",height: 100),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text(
                  "NO ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const DeepScreen()));
              }, child: Text(
                  "YES",
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
