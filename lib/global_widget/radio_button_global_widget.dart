import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class RadioButtonGlobalWidget extends StatefulWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  const RadioButtonGlobalWidget({super.key,
  required this.title1,
  required this.title2,
  required this.title3,
  required this.title4,
  required this.title5,
  });

  @override
  State<RadioButtonGlobalWidget> createState() => _RadioButtonGlobalWidgetState();
}

class _RadioButtonGlobalWidgetState extends State<RadioButtonGlobalWidget> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title1,style: regularTextStyle,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title2),
                  Radio(
                    activeColor: MyColor.greenColor,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title3),
                  Radio(
                      activeColor: MyColor.blueColor,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title4),
                  Radio(
                      activeColor: MyColor.greenColor,
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title5),
                  Radio(
                      activeColor: MyColor.greenColor,
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
