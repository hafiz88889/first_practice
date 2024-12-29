import 'package:first_practice/global_widget/check_box_widget.dart';
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
                title1: "What is your Country Name?",
                title2: "Bangladesh",
                title3: "India",
                title4: "Nepal",
                title5: "Butan",
              ),
              const CheckBoxWidget(
                  title1: "Your Religion?",
                  title2: "Islam",
                  title3: "Hindu",
                  title4: "Cristian",
                  title5: "Chakma"),
              const CheckBoxWidget(
                  title1: "In what year did Bangladesh gain independence?",
                  title2: "1971",
                  title3: "1970",
                  title4: "1969",
                  title5: "1975"),
              const CheckBoxWidget(
                  title1: "How many deviation in Bangladesh?",
                  title2: "5",
                  title3: "11",
                  title4: "8",
                  title5: "7"),
              const CheckBoxWidget(
                  title1: "How many Public University In Bangladesh ?",
                  title2: "55",
                  title3: "40",
                  title4: "60",
                  title5: "65"),
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
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                  width: 350,
                  child:
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(MyColor.burgeboxColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                          ),
                          onPressed: () {}, child: Text("Submit",style: regularTextStyle.copyWith(color: MyColor.whiteColor),)))
            ],
          ),
        ));
  }
}
