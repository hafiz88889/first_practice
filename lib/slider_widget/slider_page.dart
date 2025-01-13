import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Slider",
          style: regularTextStyle,
        ),
        backgroundColor: MyColor.blueColor,
      ),
      body: Column(
        children: [
          Slider(
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
          // CupertinoSlider(value: _currentValue, onChanged: (currentValue){
          //   setState(() {
          //     _currentValue =currentValue!;
          //   });
          // })
        ],
      ),
    );
  }
}
