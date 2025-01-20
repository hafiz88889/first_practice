import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final Widget icon;

  const TextFormWidget({super.key,
  required this.title1,
  required this.title2,
  required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title1,style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
        const SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide:  const BorderSide(),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: title2 ,hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(200)),
              suffixIcon: icon,
          ),
        )
      ],
    );
  }
}
