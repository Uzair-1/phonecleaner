// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names, avoid_unnecessary_containers
import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Component/applist_Item.dart';

class AppManagerScreen extends StatefulWidget {
  const AppManagerScreen({super.key});

  @override
  State<AppManagerScreen> createState() => _AppManagerScreenState();
}

class _AppManagerScreenState extends State<AppManagerScreen> {
  List<String> AppList= ["WhatsApp","Facebook","Instagram","Twitter","Snapchat","Telegram","Messanger","Netflix","Spotify","Skype","Foodpanda",];
  List<String> ProductPicture=[
    "whatsapp.png",
    "facebook.png",
    "instagram.png",
    "twitter.png",
    "snapchat.png",
    "telegram.png",
    "messenger.png",
    "netflix.png",
    "spotify.png",
    "skype.png",
  ];
  bool Ischecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(child: Icon(Icons.arrow_back),onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},),
        title: const Text(
          "App Manager",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
      child: Container(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              AppListItem(imagePath: 'assets/whatsapp.png', titleText: 'WhatApp',),
               AppListItem(imagePath: 'assets/facebook.png', titleText: 'Facebook',),
               AppListItem(imagePath: 'assets/instagram.png', titleText: 'Instagram',),
               AppListItem(imagePath: 'assets/twitter.png', titleText: 'Twitter',),
               AppListItem(imagePath: 'assets/snapchat.png', titleText: 'snapchat',),
              AppListItem(imagePath: 'assets/telegram.png', titleText: 'Telegram',),
              AppListItem(imagePath: 'assets/messenger.png', titleText: 'Messenger',),
              AppListItem(imagePath: 'assets/netflix.png', titleText: 'Netflix',),
              AppListItem(imagePath: 'assets/spotify.png', titleText: 'Spotify',),
              AppListItem(imagePath: 'assets/skype.png', titleText: 'Skype',),
              SizedBox(height: 10,),
              Stack(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                      onPressed: () {
                        _UninstallDialog();
                      },
                      child: const Text(
                        "Uninstall",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    ));
  }
  Future<void> _UninstallDialog () async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Uninstall",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: const [
                  Text("Are you sure you want to uninstall these apps?"),
                  SizedBox(height: 40,),
                  Icon(Icons.delete_forever_outlined,size: 40,color: Colors.blue,),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Junk_Clearn()));
              }, child: Text(
                  "NO ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.normal,
                  )
              )),
              TextButton(onPressed: () {
                _UninstallSuccessDialog();
              }, child: Text(
                  "YES ",
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
  Future<void> _UninstallSuccessDialog () async {
    Future.delayed(Duration(seconds: 2),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AppManagerScreen()));});
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0,
            title: Text(
                "Uninstall successfully",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Lottie.asset(
                    "assets/animation_lk9ceddj.json",
                    height: 200,
                    animate: true,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
