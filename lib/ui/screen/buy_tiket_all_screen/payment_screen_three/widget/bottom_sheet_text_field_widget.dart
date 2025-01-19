import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class BottomSheetTextFieldWidget extends StatefulWidget {
  final String title;
  final String title2;
  const BottomSheetTextFieldWidget({super.key,
  required this.title,
  required this.title2,
  });

  @override
  State<BottomSheetTextFieldWidget> createState() => _BottomSheetTextFieldWidgetState();
}

class _BottomSheetTextFieldWidgetState extends State<BottomSheetTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(widget.title,style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
        const SizedBox(height: 10,),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: MyColor.whiteColor)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: MyColor.whiteColor)),
                filled: true,
                fillColor: MyColor.normalOrange,
                hintText: widget.title2,hintStyle: regularTextStyle16.copyWith(color: MyColor.whiteColor)
            ),
          ),
        )
      ],
    );
  }
}
