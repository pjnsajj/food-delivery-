// import 'package:flutter/material.dart';

// class MenuList extends StatefulWidget {
//   const MenuList({super.key});

//   @override
//   State<MenuList> createState() => _MenuListState();
// }

// class _MenuListState extends State<MenuList> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         for (int i = 1; i < 12; i++)
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 250,
//                   width: 180,
//                   color: Colors.orange,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 250,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//               ),
//             ],
//           ),
//       ],
//     );

//     // return GridView(
//     //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     //     crossAxisCount: 2,
//     //     childAspectRatio: 0.5,
//     //   ),
//     //   children: List<Widget>.generate(20, (int i) {
//     //     return Builder(builder: (BuildContext context) {
//     //       return Container(
//     //         padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//     //         margin: EdgeInsets.symmetric(),
//     //         decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(20),
//     //             color: Colors.orange,
//     //             boxShadow: [
//     //               BoxShadow(
//     //                   color: Colors.grey.withOpacity(0.4),
//     //                   spreadRadius: 1,
//     //                   blurRadius: 8)
//     //             ]),
//     //       );
//     //     });
//     //   }),
//     // );
//   }
// }
