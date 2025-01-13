import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class CardRowWidget extends StatelessWidget {
  final String image;
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
        const  SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,style: regularTextStyle.copyWith(fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Text(title2,style: regularTextStyle.copyWith(fontWeight: FontWeight.normal),),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title3,style: regularTextStyle,),
            const  SizedBox(height: 10,),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColor.messageMainColor
              ),
              child: Center(child: Text(title4,style: regularTextStyle,)),
            )
          ],
        ),
      ],
    );
  }
}
