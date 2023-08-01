// ignore_for_file: prefer_const_constructors, file_names

import 'package:cleanerinternday2/SettingsScreen/setting.dart';
import 'package:flutter/material.dart';

class OneTapScreen extends StatefulWidget {
  const OneTapScreen({super.key});

  @override
  State<OneTapScreen> createState() => _OneTapScreenState();
}

class _OneTapScreenState extends State<OneTapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Setting",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Expanded(
                    child: ListView(
                      children: [
                        SizedBox(height: 10,),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "Junk file",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "App management",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "Deep cleaner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "Antivirus cleaner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "File management",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "Notification cleaner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                        ListTile(
                          onTap: (){},
                          leading: Text(
                              "Photo cleaner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),Divider(),
                      ],
                    ),
                  )
              ),
            ]),
      ),


    ));
  }
}
