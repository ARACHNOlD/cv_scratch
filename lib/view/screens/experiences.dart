import 'package:cv_scratch/view/screens/Workexp.dart';
import 'package:flutter/material.dart';

import '../utils/validation.dart';

class Experiences extends StatefulWidget {
  const Experiences({
    super.key,
    required this.name1,
    required this.email1,
    required this.phonenumber1,
    required this.address1,
    required this.selectedGender1,
  });
  final String name1;
  final String email1;
  final String phonenumber1;
  final String address1;
  final String selectedGender1;

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  final formkey = GlobalKey<FormState>();

  TextEditingController degree = TextEditingController();
  TextEditingController college = TextEditingController();
  TextEditingController skill = TextEditingController();

  DateTime? startDateEdu;
  DateTime? endDateEdu;

  String dropdownvalue = 'Select Level';

  // List of items in our dropdown menu
  var items = [
    'Select Level',
    'Expert',
    'Experienced',
    'Intermediate',
    'Beginner',
  ];

  Future<void> _selectstartDateEdu(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDateEdu,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDateEdu) {
      setState(() {
        startDateEdu = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDateEdu,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDateEdu) {
      setState(() {
        endDateEdu = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 227, 77, 31),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
        title: const Text(
          "Qualifications",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Education",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.grey,
                        fontSize: 20),
                  ),
                ),
                TextFormField(
                  controller: degree,
                  decoration: const InputDecoration(
                    labelText: "Degree",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: "Eg Bachelor of Science",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Degree');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: college,
                  decoration: const InputDecoration(
                    labelText: "School/College",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: " Eg Pokhara University",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'School/College');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _selectstartDateEdu(context);
                        },
                        child: Text(
                          startDateEdu == null
                              ? 'Start Date'
                              : ' ${startDateEdu!.toString().substring(0, 10)}',
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _selectEndDate(context);
                        },
                        child: Text(
                          endDateEdu == null
                              ? 'End Date'
                              : ' ${endDateEdu!.toString().substring(0, 10)}',
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Skills",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.grey,
                        fontSize: 20),
                  ),
                ),
                TextFormField(
                  controller: skill,
                  decoration: const InputDecoration(
                    labelText: "Skills",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: "Please enter in comma sepearated",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Name');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => WorkExp(
                                name2: widget.name1,
                                email2: widget.email1,
                                phonenumber2: widget.phonenumber1,
                                address2: widget.address1,
                                selectedGender2: widget.selectedGender1,
                                college2: college.text,
                                skill2: skill.text,
                                degree2: degree.text,
                                skilllevel2: dropdownvalue,
                                edustartdate: startDateEdu.toString(),
                                eduenddate: endDateEdu.toString(),
                              )),
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 227, 77, 31))),
                  child: const Text("Next Step"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
