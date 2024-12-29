import 'package:first_practice/global_widget/check_box_widget.dart';
import 'package:first_practice/radio_button/radio_button_page.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ans the Question"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CheckBoxWidget(
                title1: "Which singer like you?",
                title2: "James",
                title3: "Pritom",
                title4: "Zeffer",
                title5: "Tahsan",
              ),
              const CheckBoxWidget(
                  title1: "Which Brand Shoes Like you?",
                  title2: "Bata",
                  title3: "Apex",
                  title4: "Data",
                  title5: "Something"),
              const CheckBoxWidget(
                  title1: "What you want visit which country?",
                  title2: "Singapure",
                  title3: "Nepal",
                  title4: "Maldwip",
                  title5: "Srilanka"),
              const CheckBoxWidget(
                  title1: "What band phone are you using?",
                  title2: "Vivo",
                  title3: "Apple",
                  title4: "Xaomi",
                  title5: "Realme"),
              CheckboxListTile(
                title: Text('Accept Terms and Conditions',
                    style:
                        regularTextStyle.copyWith(color: MyColor.whiteColor)),
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue!;
                  });
                },
                activeColor: MyColor.greenColor,
                checkColor: MyColor.whiteColor,
                tileColor: (Colors.blue),
                // Background color of the tile
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // Rounded corners
                //controlAffinity: ListTileControlAffinity.leading,
              ),
             const SizedBox(height: 20,),
              SizedBox(
                height: 50,
                  width: 350,
                  child:
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(MyColor.burgeboxColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const RadioButtonPage()));
                          }, child: Text("Submit",style: regularTextStyle.copyWith(color: MyColor.whiteColor),)))
            ],
          ),
        ));
  }
}
