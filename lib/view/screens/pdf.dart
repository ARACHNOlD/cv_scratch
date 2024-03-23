
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

// class TeachersPdf extends pw.StatelessWidget {
//    final String name3;
//   final String email3;
//   final String phonenumber3;
//   final String address3;
//   final String selectedGender3;
//   final String degree3;
//   final String college3;
//   final String skill3;
//   final String skilllevel3;
//   final String job3;
//   final String jobcity3;
//   final String organization3;
//   final String description3;
//   final String startDateWork;
//   final String endDateWork;
//   final String edustartdate3;
//   final String eduenddate3;
//   final String language;
//   final String hobbies;

//   DateTime passDate = DateTime.now();

//   TeachersPdf({required this.name3, required this.email3, required this.phonenumber3, required this.address3, required this.selectedGender3, required this.degree3, required this.college3, required this.skill3, required this.skilllevel3, required this.job3, required this.jobcity3, required this.organization3, required this.description3, required this.startDateWork, required this.endDateWork, required this.edustartdate3, required this.eduenddate3, required this.language, required this.hobbies});
//   @override
//   pw.Widget build(pw.Context context) {
//     double screenWidth = MediaQuery.of(context as BuildContext).size.width;
//     double textScaleFactor = screenWidth / 400;
//     return 
      
        
        
//          pw.Row(
//           crossAxisAlignment: pw.CrossAxisAlignment.start,
//           children: [
//             pw.Flexible(
//               flex: 1,
//               child: pw.Container(
//                 height: MediaQuery.of(context as BuildContext).size.height,
//                 color: PdfColors.blueGrey,
//                 child: pw.Column(
//                   crossAxisAlignment: pw.CrossAxisAlignment.center,
//                   children: [
//                      pw.CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage("assets/images.jpg"),
//                     ),
//                     ListTile(
//                       title: Text(
//                         name3,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 21 * textScaleFactor,
//                         ),
//                       ),
//                       subtitle: Text(
//                         job3,
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ),
//                     // Text(
//                     //     "As a dedicated and results-oriented professional, I thrive in dynamic environments, leveraging my skills to deliver impactful solutions, I am committed to continuous learning and contributing effectively to collaborative teams. ")
//                     Text(
//                       "Skills ",
//                       style: TextStyle(
//                         fontSize: 20 * textScaleFactor,
//                         // Text color
//                         fontWeight: FontWeight.bold, // Bold text
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       skill3,
//                       style: TextStyle(
//                         fontSize: 18 * textScaleFactor,
//                         // Text color
//                         // Bold text
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Text(
//                       "Language ",
//                       style: TextStyle(
//                         fontSize: 20 * textScaleFactor,
//                         // Text color
//                         fontWeight: FontWeight.bold, // Bold text
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       language,
//                       style: TextStyle(
//                         fontSize: 18 * textScaleFactor,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Text(
//                       "Hobbies ",
//                       style: TextStyle(
//                         fontSize: 20 * textScaleFactor,
//                         // Text color
//                         fontWeight: FontWeight.bold, // Bold text
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       hobbies,
//                       style: TextStyle(
//                         fontSize: 18 * textScaleFactor,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Text(
//                       "Contact ",
//                       style: TextStyle(
//                         fontSize: 20 * textScaleFactor,
//                         // Text color
//                         fontWeight: FontWeight.bold, // Bold text
//                       ),
//                     ),
//                     const SizedBox(height: 4),
    
//                     Text(
//                       email3,
//                       style: TextStyle(
//                         fontSize: 15 * textScaleFactor,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
    
//                     Text(
//                       address3,
//                       style: TextStyle(
//                         fontSize: 18 * textScaleFactor,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
    
//                     Text(
//                       phonenumber3,
//                       style: TextStyle(
//                         fontSize: 18 * textScaleFactor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const VerticalDivider(
//               width: 0,
//               color: Colors.black,
//             ),
//             Flexible(
//               flex: 2,
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           bottomRight: Radius.circular(20)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.5),
//                           spreadRadius: 3,
//                           blurRadius: 3,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: const Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         " Education",
//                         style: TextStyle(
//                           fontSize: 26,
//                           // Text color
//                           fontWeight: FontWeight.w500, // Bold text
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 15),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       degree3,
//                       style: const TextStyle(
//                         fontSize: 24,
//                         // Text color
//                         fontWeight: FontWeight.w900, // Bold text
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       college3,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.w800, fontSize: 23),
//                     ),
//                   ),
//                   Align(
//                       alignment: Alignment.bottomRight,
//                       child: Text(
//                           "- From ${edustartdate3.substring(0, 10)} To ${eduenddate3.substring(0, 10)} ")),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(20),
//                           bottomRight: Radius.circular(20)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.5),
//                           spreadRadius: 2,
//                           blurRadius: 2,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: const Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         " Work Experience",
//                         style: TextStyle(
//                           fontSize: 26,
//                           // Text color
//                           fontWeight: FontWeight.w500, // Bold text
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 15),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       job3,
//                       style: const TextStyle(
//                         fontSize: 24,
//                         // Text color
//                         fontWeight: FontWeight.w900, // Bold text
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       organization3,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.w800, fontSize: 20),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Text(
//                         "- From ${startDateWork.substring(0, 10)} To ${endDateWork.substring(0, 10)} "),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 12, right: 1),
//                     child: Text(
//                       description3,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.w400, fontSize: 16),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       _generatePDF(context);
//                     },
//                     child: Text("Save"),
//                   )
//                 ],
//               ),
//             )
//           ],
//         );
   
   
//   }
    
//   }

