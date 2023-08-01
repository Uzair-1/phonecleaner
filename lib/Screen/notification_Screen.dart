// ignore_for_file: camel_case_types, file_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}

class _notificationScreenState extends State<notificationScreen> {
  TextEditingController searchController = TextEditingController();
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Phone Cleaner",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: TextFormField(
                  controller: searchController,
                  onChanged: (String? value){
                    setState(() {
                     search = value.toString();
                    });
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                      hintText: "Search Notification",
                      fillColor: Colors.grey[300],
                      suffixIcon: const Icon(Icons.search_outlined,size: 25,),
                      hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.w300,
                  ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 100,),
              SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Flexible(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset("assets/search.json"),
                        Text("Search", style: TextStyle(color: Colors.blue[200], fontWeight: FontWeight.bold, fontSize: 25)),
                        const Text("Search by using a keyword"),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
