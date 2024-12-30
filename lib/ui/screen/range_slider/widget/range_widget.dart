import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class RangeWidget extends StatefulWidget {
  final String title1;
  const RangeWidget({super.key,
  required this.title1
  });

  @override
  State<RangeWidget> createState() => _RangeWidgetState();
}

class _RangeWidgetState extends State<RangeWidget> {
  RangeValues values = RangeValues(1, 10000);
  RangeLabels labels =RangeLabels("1", "10000");
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(widget.title1,style: regularTextStyle16,),
        RangeSlider(
            values: values,
            min: 1,
            max: 10000,
            labels: labels,
            divisions: 10,
            activeColor: MyColor.greenColor,
            inactiveColor: MyColor.redColor,
            onChanged: (value){
              setState(() {
                values=value;
              });

            })
      ],
    );
  }
}
