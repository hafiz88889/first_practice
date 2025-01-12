import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class TextMessageWidgetTwo extends StatelessWidget {
  final String title;
  const TextMessageWidgetTwo({super.key,
  required this.title
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(15),
      height: 50,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(25)),
          color: MyColor.whiteColor),
      child: Text(
        title,
        style: regularTextStyle14.copyWith(color: MyColor.blackColor),
      ),
    );
  }
}
