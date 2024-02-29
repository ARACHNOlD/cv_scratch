// import 'package:flutter/material.dart';

// class MyRadioWidget extends StatefulWidget {
//   const MyRadioWidget({super.key});

//   @override
//   MyRadioWidgetState createState() => MyRadioWidgetState();
// }

// class MyRadioWidgetState extends State<MyRadioWidget> {
//   String selectedGender = '';

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         RadioListTile<String>(
//           title: const Text('Male'),
//           value: 'Male',
//           groupValue: selectedGender,
//           onChanged: (String? value) {
//             setState(() {
//               selectedGender = value!;
//             });
//           },
//         ),
//         RadioListTile<String>(
//           title: const Text('Female'),
//           value: 'Female',
//           groupValue: selectedGender,
//           onChanged: (String? value) {
//             setState(() {
//               selectedGender = value!;
//             });
//           },
//         ),
//         RadioListTile<String>(
//           title: const Text('Other'),
//           value: 'Other',
//           groupValue: selectedGender,
//           onChanged: (String? value) {
//             setState(() {
//               selectedGender = value!;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
