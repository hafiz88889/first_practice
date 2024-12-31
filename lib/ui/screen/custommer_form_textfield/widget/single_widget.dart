import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class SingleWidget extends StatefulWidget {
  final String title1;
  const SingleWidget({super.key,
  required this.title1,
  });

  @override
  State<SingleWidget> createState() => _SingleWidgetState();
}

class _SingleWidgetState extends State<SingleWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10,),
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColor.whiteColor,
          border: Border.all(color: MyColor.greyColor)),
      child: TextField(
        decoration: InputDecoration(
          hintText:widget.title1,
          hintStyle: regularTextStyle14.copyWith(
              fontSize: 12, color: MyColor.greyColor,),
          hoverColor: MyColor.redColor,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
