import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class CardRowWidget extends StatelessWidget {
  final image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const CardRowWidget({super.key,
  required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
        ),
         SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,style: hedingText.copyWith(fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
            Text(title2,style: hedingText.copyWith(fontWeight: FontWeight.normal),),
          ],
        ),
         Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title3,style: visibleText,),
             SizedBox(height: 10,),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.circleColor
              ),
              child: Center(child: Text(title4,style: regularTextStyle14,)),
            )
          ],
        ),
      ],
    );
  }
}
