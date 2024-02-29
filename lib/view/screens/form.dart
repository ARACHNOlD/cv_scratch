import 'package:cv_scratch/view/screens/experiences.dart';
import 'package:flutter/material.dart';

import '../utils/validation.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final formkey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  String? selectedGender;
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
          "Personal Details",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Name');
                  },
                ),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmail(value);
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                TextFormField(
                  controller: phonenumber,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Phone Number');
                  },
                ),
                TextFormField(
                  controller: address,
                  decoration: const InputDecoration(
                    labelText: "Address",
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  validator: (value) {
                    return FormValidator.validateEmpty(value, 'Address');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RadioListTile<String>(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Other'),
                  value: 'Other',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Experiences(
                              name1: name.text,
                              email1: email.text,
                              phonenumber1: phonenumber.text,
                              address1: address.text,
                              selectedGender1: selectedGender.toString())),
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
