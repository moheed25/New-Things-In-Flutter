// import 'package:flutter/material.dart';

// class ListGenerate extends StatefulWidget {
//   const ListGenerate({super.key});

//   @override
//   State<ListGenerate> createState() => _ListGenerateState();
// }

// class _ListGenerateState extends State<ListGenerate> {
//   int SelectedIndex = -1;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 200,
//           ),
//           Center(
//             child: Wrap(
//                 spacing: 6,
//                 direction: Axis.horizontal,
//                 children: List.generate(4, (index) {
//                   return InkWell(
//                     onTap: () {
//                       setState(() {
//                         SelectedIndex = index;
//                       });
//                     },
//                     child: Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         color:
//                             SelectedIndex == index ? Colors.red : Colors.black,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                     ),
//                   );
//                 })),
//           )
//         ],
//       ),
//     ));
//   }
// }
