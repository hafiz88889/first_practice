import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class TextFormPage extends StatefulWidget {
  const TextFormPage({super.key});

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

class _TextFormPageState extends State<TextFormPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6= TextEditingController();
  TextEditingController controller7 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Registation",
          style: regularTextStyle18,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print("change ${value}");
                    },
                    controller: controller1,
                    decoration: InputDecoration(
                      label: const Text(
                        "Frist name",
                      ),
                      // counter: .,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: MyColor.greenColor)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderSide: BorderSide(color: MyColor.blackColor),
                       borderRadius: BorderRadius.circular(10)
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: MyColor.greenColor),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     label: Text("Secound name"),
                   ),
                    keyboardType: TextInputType.text,
                    controller: controller2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      print("change ${value}");
                    },
                    controller: controller3,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text(
                        "Street address",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColor.greenColor),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      print("change ${value}");
                    },
                    controller: controller4,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text(
                        "Street address Line 2",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColor.greenColor),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      print("change ${value}");
                    },
                    controller: controller5,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text(
                        "Email",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColor.greenColor),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      print("change ${value}");
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(6),
                      FilteringTextInputFormatter.allow(
                          RegExp((r'^\d+\.?\d{0,2}')))
                    ],
                    controller: controller6,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text(
                        "Set password ",
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColor.greenColor),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(MyColor.burgeboxColor)),
                      onPressed: () {
                        print("This show ${controller1.text}");
                        if (_formKey.currentState!.validate()) {
                          print("right ");
                        }
                      },
                      child: Text(
                        "Submit",
                        style: regularTextStyle18.copyWith(
                            color: MyColor.whiteColor),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
