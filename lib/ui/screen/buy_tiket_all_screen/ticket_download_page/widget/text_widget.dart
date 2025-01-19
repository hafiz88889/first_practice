import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const TextWidget({super.key,
  required this.title1,
  required this.title2,
  required this.title3,
  required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title1,style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 12),),
            Text(title2,style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 12),),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title3,style: regularTextStyle14.copyWith(color: MyColor.softBlackColor,),),
            Text(title4,style: regularTextStyle14.copyWith(color: MyColor.softBlackColor,),),
          ],
        ),
      ],
    );
  }
}
