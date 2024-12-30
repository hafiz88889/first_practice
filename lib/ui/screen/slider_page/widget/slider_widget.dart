import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class SliderWidget extends StatefulWidget {
  final String title1;
  const SliderWidget({super.key,
  required this.title1,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title1,style: regularTextStyle16,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
                activeColor: MyColor.greenColor,
                inactiveColor: MyColor.redColor,
                thumbColor: MyColor.blackColor,
                value: _currentValue,
                min: 0,
                max: 15,
                divisions: 4,
                label: _currentValue.toString(),
                onChanged: (value) {
                  setState(() {
                    _currentValue = value!;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
