import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/custommer_form_textfield/custommer_form/form_page.dart';
import 'package:my_practice/ui/screen/text_form_field/text_form_screen/form_page.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack",
            style: regularTextStyle16,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      color: MyColor.deepgreen,
                    ),
                    Positioned(
                      top: 50,
                      bottom: 50,
                      left: 130,
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: MyColor.redColor),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      height: 198,
                      width: 400,
                      decoration: BoxDecoration(color: MyColor.blackColor),
                    ),
                    Positioned(
                      top: 66,
                      child: Container(
                        height: 66,
                        width: 400,
                        decoration: BoxDecoration(color: MyColor.redColor),
                      ),
                    ),
                    Positioned(
                      top: 132,
                      child: Container(
                        height: 66,
                        width: 400,
                        decoration: BoxDecoration(color: MyColor.yellowColor),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 399,
                      decoration: BoxDecoration(color: MyColor.greenColor),
                    ),
                    Positioned(
                      left: 133,
                      child: Container(
                        height: 200,
                        width: 133,
                        decoration: BoxDecoration(
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 200,
                        width: 133,
                        decoration: BoxDecoration(
                          color: MyColor.redColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.greenColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TextFormPage()));
                  },
                  child: Text("Go Text form page",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),))
            ],
          ),
        ));
  }
}
