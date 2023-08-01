// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:cleanerinternday2/Screen/Component/Reuseable_Row.dart';
import 'package:cleanerinternday2/Screen/home.dart';
import 'package:cleanerinternday2/Screen/JunkClean/junkClearn_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Component/Reuseable_Container.dart';

class JunkScreen extends StatelessWidget {
  const JunkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Junk Cleaner",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body:  Stack(
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
                                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Junkclearn_Screen()));
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
                          ],
                        )
                    )
                ),
                Divider(),
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
                              "Junk cleaner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        ],
                      ),
                      Row(  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              "In this scan these file can remove",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              )
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/groupdel3.png"),onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>JunkScreen()));},),
                          GestureDetector(child:  CircularImageContainer(imagePath: "assets/groupdel2.png"),onTap: (){} ,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ReusableRow(texts: ['Residual Junk',],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: ['Add Junk'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(child: CircularImageContainer(imagePath: "assets/groupdel3.png"),onTap: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>JunkScreen()));},),
                          GestureDetector(child:  CircularImageContainer(imagePath: "assets/android.png"),onTap: (){} ,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ReusableRow(texts: ['Cache Junk'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                          ReusableRow(texts: const ['Obsolete APKs'],textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),);
      }
   }
