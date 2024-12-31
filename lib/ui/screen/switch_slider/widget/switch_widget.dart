import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isSwitch.toString(),
            style: regularTextStyle16,
          ),
          Switch(
            activeColor: MyColor.blueColor,
              inactiveThumbColor: MyColor.redColor,
              thumbColor: WidgetStateProperty.all(MyColor.whiteColor),

              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              })
        ],
      ),
    );
  }
}
