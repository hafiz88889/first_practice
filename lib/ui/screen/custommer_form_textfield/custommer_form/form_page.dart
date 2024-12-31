import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/custommer_form_textfield/widget/single_widget.dart';
import 'package:my_practice/ui/screen/custommer_form_textfield/widget/two_row_widget.dart';
import 'package:my_practice/ui/screen/date_picker/date_picker_screen/date_picker_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        title: Text(
          "New Custommer Form",
          style: regularTextStyle18,
        ),
        backgroundColor: MyColor.whiteColor,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Custommer Details",
                style: regularTextStyle16,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              TwoRowWidget(
                  title1: "Enter your frist name",
                  title2: "Enter your last name"),
            ],
          ),
          Row(
            children: [
              Text(
                "Address",
                style: regularTextStyle16,
              ),
            ],
          ),
          SingleWidget(title1: "Street address 1"),
          SingleWidget(title1: "Street address Line 2"),
          TwoRowWidget(title1: "City", title2: "State"),
          SingleWidget(title1: "Postal zip code"),
          TwoRowWidget(title1: "Phone number ", title2: "email@.com"),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.blueColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DatePickerPage()));
              },
              child:  Text("Enter to Date picker",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),))
        ],
      ),
    );
  }
}
