// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:cleanerinternday2/SettingsScreen/oneTapScreen.dart';
import 'package:flutter/material.dart';

import '../Screen/home.dart';


class SettingScreen extends StatefulWidget {
   SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
   bool isSwitch1 = false;
   bool isSwitch2 = false;
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
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 10,),
                 const ListTile(
                   leading: Text(
                       "Clean & Optimization",
                       style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                       )
                   ),
                 ),
                  ListTile(
                    onTap: (){},
                    leading: Text(
                        "Protected App",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        )
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),Divider(),
                  ListTile(
                    leading: Text(
                        "Phone clearner",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Text(
                        "App install security scan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        )
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),Divider(),
                  ListTile(
                    leading: Text(
                        "Shortcut & Widgets",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OneTapScreen()));
                    },
                    leading: const Text(
                        "One-tap shortcut",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        )
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Text(
                        "Widget in notification bar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        )
                    ),
                    trailing: Switch(
                        value: isSwitch1,
                        onChanged: (value){
                          setState(() {
                            isSwitch1 =value;
                          });
                        }
                    ),
                  ), Divider(),
                  const ListTile(
                    leading: Text(
                        "Appearance",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Text(
                        "Dark mode",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        )
                    ),
                     trailing: Switch(
                      value: isSwitch2,
                      onChanged: (value){
                        setState(() {
                          isSwitch2 =value;
                        });
                      }
                  ),
                  ),

                ],
              ),
            )
          ),
        ]),
      ),

    ));
  }
}
