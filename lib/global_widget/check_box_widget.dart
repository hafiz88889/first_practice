import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget{
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  const CheckBoxWidget({super.key,
  required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
  });
  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _value= false;
  bool _value1= false;
  bool _value2= false;
  bool _value3= false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title1,
            style: regularTextStyle.copyWith(fontSize: 20),
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(widget.title2,style: regularTextStyle,),
                  Checkbox(
                      activeColor: MyColor.blueColor,
                      checkColor: MyColor.whiteColor,
                      value: _value,
                      onChanged: (newvalue) {
                        setState(() {
                          _value = newvalue!;
                        });
                      }
                  ),
                ],
              ),
              const SizedBox(width: 20,),
              Row(
                children: [
                  Text(widget.title3,style: regularTextStyle),
                  Checkbox(
                      activeColor: MyColor.blueColor,
                      checkColor: MyColor.whiteColor,
                      value: _value1,
                      onChanged: (newvalue) {
                        setState(() {
                          _value1 = newvalue!;
                        });
                      }
                  ),
                ],
              ),
              const SizedBox(width: 20,),
              Row(
                children: [
                  Text(widget.title4,style: regularTextStyle),
                  Checkbox(
                      activeColor: MyColor.blueColor,
                      checkColor: MyColor.whiteColor,
                      value: _value2,
                      onChanged: (newvalue) {
                        setState(() {
                          _value2 = newvalue!;
                        });
                      }
                  ),
                ],
              ),
             const SizedBox(width: 20,),
              Row(
                children: [
                  Text(widget.title5,style: regularTextStyle),
                  Checkbox(
                      activeColor: MyColor.blueColor,
                      checkColor: MyColor.whiteColor,
                      value: _value3,
                      onChanged: (newvalue) {
                        setState(() {
                          _value3 = newvalue!;
                        });
                      }
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}