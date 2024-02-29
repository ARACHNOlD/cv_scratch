// ignore_for_file: file_names

import 'package:cv_scratch/view/screens/display.dart';
import 'package:flutter/material.dart';

import '../utils/validation.dart';

class WorkExp extends StatefulWidget {
  const WorkExp({
    super.key,
    required this.name2,
    required this.email2,
    required this.phonenumber2,
    required this.address2,
    required this.selectedGender2,
    required this.college2,
    required this.skill2,
    required this.degree2,
    required this.skilllevel2,
    required this.edustartdate,
    required this.eduenddate,
  });
  final String name2;
  final String email2;
  final String phonenumber2;
  final String address2;
  final String selectedGender2;
  final String degree2;
  final String college2;
  final String skill2;
  final String skilllevel2;
  final String edustartdate;
  final String eduenddate;

  @override
  State<WorkExp> createState() => _WorkexpState();
}

class _WorkexpState extends State<WorkExp> {
  final formkey = GlobalKey<FormState>();

  TextEditingController job = TextEditingController();
  TextEditingController jobcity = TextEditingController();
  TextEditingController organization = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController hobbies = TextEditingController();

  DateTime? startDateWork;
  DateTime? endDateWork;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDateWork,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDateWork) {
      setState(() {
        startDateWork = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDateWork,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDateWork) {
      setState(() {
        endDateWork = picked;
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
          "Work Experience",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: job,
                  decoration: const InputDecoration(
                    labelText: "Job Title",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: "Eg UI Designer",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Job Title');
                  },
                ),
                TextFormField(
                  controller: jobcity,
                  decoration: const InputDecoration(
                    labelText: "City/Town",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: " Eg Pokhara ",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'City/Town');
                  },
                ),
                TextFormField(
                  controller: organization,
                  decoration: const InputDecoration(
                    labelText: "Organization",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: " Eg xyz company ",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Organization');
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
                  height: 15,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _selectStartDate(context);
                        },
                        child: Text(
                          startDateWork == null
                              ? 'Start Date'
                              : ' ${startDateWork!.toString().substring(0, 10)}',
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _selectEndDate(context);
                        },
                        child: Text(
                          endDateWork == null
                              ? 'End Date'
                              : ' ${endDateWork!.toString().substring(0, 10)}',
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: description,
                  maxLines: 6, // Set the maximum number of lines
                  minLines: 2, // Set the minimum number of lines
                  decoration: const InputDecoration(
                    hintText: 'Enter your description here',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Description');
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Other Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                TextFormField(
                  controller: language,
                  decoration: const InputDecoration(
                    labelText: "Language",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: " Please enter in comma sepearated ",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Organization');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: hobbies,
                  decoration: const InputDecoration(
                    labelText: "Hobbies",
                    labelStyle: TextStyle(fontWeight: FontWeight.w600),
                    hintText: " Please enter in comma sepearated ",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Organization');
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Display(
                                name3: widget.name2,
                                email3: widget.email2,
                                phonenumber3: widget.phonenumber2,
                                address3: widget.address2,
                                selectedGender3: widget.selectedGender2,
                                degree3: widget.degree2,
                                college3: widget.college2,
                                skill3: widget.skill2,
                                skilllevel3: widget.skilllevel2,
                                job3: job.text,
                                jobcity3: jobcity.text,
                                organization3: organization.text,
                                description3: description.text,
                                startDateWork: startDateWork.toString(),
                                endDateWork: endDateWork.toString(),
                                edustartdate3: widget.edustartdate,
                                eduenddate3: widget.eduenddate,
                                language: language.text,
                                hobbies: hobbies.text,
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
                  child: const Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
