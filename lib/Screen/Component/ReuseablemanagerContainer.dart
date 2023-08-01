// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final String imagePath;

  const AppContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
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
            width: 20,
            height: 20,
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



















// import 'package:flutter/material.dart';
//
// class ListReuse extends StatelessWidget {
//   String imagePath;
//   String titleText;
//   bool Ischeck = false;
//   final ValueChanged<bool?> onChanged;
//
//   ListReuse({required this.imagePath,required this.titleText,required this.Ischeck, required this.onChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Container(
//         width: 50,
//         height: 50,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           shape: BoxShape.circle,
//           boxShadow: const [
//             BoxShadow(
//               blurRadius: 4,
//               color: Colors.grey,
//               offset: Offset(0, 2),
//               spreadRadius: -1,
//             ),
//           ],
//         ),
//         child: Center(
//           child: ClipOval(
//             child: SizedBox(
//               width: 60,
//               height: 60,
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//         ),
//       ),
//       title: Text(titleText),
//       trailing: Checkbox(
//           value: Ischeck,
//           onChanged: onChanged
//    ),
//
//     );
//   }
// }

