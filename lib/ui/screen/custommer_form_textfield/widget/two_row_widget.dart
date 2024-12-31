import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class TwoRowWidget extends StatelessWidget {
  final String title1;
  final String title2;

  const TwoRowWidget({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 10,),
          height: 40,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColor.whiteColor,
              border: Border.all(color: MyColor.greyColor)),
          child: TextField(
            decoration: InputDecoration(
              hintText: title2,
              hintStyle: regularTextStyle14.copyWith(
                  fontSize: 12, color: MyColor.greyColor),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 10,),
          height: 40,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColor.whiteColor,
              border: Border.all(color: MyColor.greyColor)),
          child: TextField(
            decoration: InputDecoration(
              hintText: title2,
              hintStyle: regularTextStyle14.copyWith(
                  fontSize: 12, color: MyColor.greyColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
