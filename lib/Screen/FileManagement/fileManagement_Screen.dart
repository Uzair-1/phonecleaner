// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace, non_constant_identifier_names

import 'package:cleanerinternday2/Screen/FileManagement/file_management.dart';
import 'package:cleanerinternday2/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class FileManagement extends StatefulWidget {
  const FileManagement({super.key});

  @override
  State<FileManagement> createState() => _FileManagementState();
}

class _FileManagementState extends State<FileManagement> {
  final  Listcolor =[
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.redAccent,
  ];
  Map<String, double> dataMap = {
    "System": 24.56,
    "Photo": 12.92,
    "Vedio": 20.58,
    "Document": 10.04,
    "Audio":16.75,
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                child: PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 3000),
                  chartLegendSpacing: 32,
                  chartRadius: MediaQuery.of(context).size.width / 2.5,
                  colorList: Listcolor,
                  initialAngleInDegree: 0,
                  chartType: ChartType.disc,
                  ringStrokeWidth: 32,
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.left,
                    showLegends: true,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                ),
              ),const SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FileManagement_Screen()));
                  }, child: const Text(
                'Clean',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              )),
                SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child:ListView(
                  children: [
                    SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                          ),
                          height: MediaQuery.of(context).size.height,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
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
    ));
  }
}
