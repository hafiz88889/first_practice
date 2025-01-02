import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class TextFormPage extends StatefulWidget {

  const TextFormPage({super.key});

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

class _TextFormPageState extends State<TextFormPage> {
  TextEditingController controller =TextEditingController();
final _formKey =GlobalKey<FormState>();
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
          child: Column(
          children: [
            TextFormField(
              validator: (value){
                if(value.toString().isEmpty){
                  return "Empty";
                }
                return null;
              },
              onChanged: (value){
                print("change ${value}");
              },
              controller: controller,
              decoration: InputDecoration(
                  label:  const Text(
                    "Frist name",
                  ),
                  // counter: .,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: MyColor.greenColor)
                  ),
              ),
            ),
          const SizedBox(height: 10,),
            TextFormField(
              onChanged: (value){
                print("change ${value}");
              },
              controller: controller,
              validator: (value){
                if(value.toString().isEmpty){
                  return "Empty";
                }
                return null;
              },
              decoration: InputDecoration(
                label: const Text(
                  "Second name",
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greenColor),borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              onChanged: (value){
                print("change ${value}");
              },
              controller: controller,
              validator: (value){
                if(value.toString().isEmpty){
                  return "Empty";
                }
                return null;
              },
              decoration: InputDecoration(
                label: const Text(
                  "Street address",
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greenColor),borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              onChanged: (value){
                print("change ${value}");
              },
              controller: controller,
              validator: (value){
                if(value.toString().isEmpty){
                  return "Empty";
                }
                return null;
              },
              decoration: InputDecoration(
                label: const Text(
                  "Street address Line 2",
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greenColor),borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    WidgetStateProperty.all(MyColor.burgeboxColor)),
                onPressed: () {
                  print("This show ${controller.text}");
                  if(_formKey.currentState!.validate()){
                    print("right ");
                  }
                },
                child: Text(
                  "Submit",
                  style: regularTextStyle18.copyWith(color: MyColor.whiteColor),
                ))
          ],
        ),)
      ),
    );
  }
}
