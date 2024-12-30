import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class SliderWidgetTwo extends StatefulWidget {

  const SliderWidgetTwo({super.key,

  });

  @override
  State<SliderWidgetTwo> createState() => _SliderWidgetTwoState();
}

class _SliderWidgetTwoState extends State<SliderWidgetTwo> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.volume_up,color: MyColor.blackColor,size: 50,),
          Slider(
              activeColor: MyColor.greenColor,
              inactiveColor: MyColor.redColor,
              thumbColor: MyColor.blackColor,
              value: _currentValue,
              min: 0,
              max: 15,
              divisions: 15,
              label: _currentValue.toString(),
              onChanged: (value) {
                setState(() {
                  _currentValue = value!;
                });
              }),
        ],
      ),
    );
  }
}
