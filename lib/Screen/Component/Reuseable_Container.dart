// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularImageContainer extends StatelessWidget {
  final String imagePath;

  const CircularImageContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            offset: Offset(0, 2),
            spreadRadius: -1,
          ),
        ],
      ),
      child: Center(
        child: ClipOval(
          child: SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}



