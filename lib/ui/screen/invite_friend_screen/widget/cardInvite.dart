import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class Cardinvite extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String image2;
  final String title3;
  final String title4;
  const Cardinvite({super.key,
  required this.image,
  required this.title1,
  required this.title2,
    required this.image2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                Text(title2,style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
              ],
            ),
            const Spacer(),
            ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.softOrangeColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                ),
                child: Row(children: [
                  Icon(Icons.check,color: MyColor.eSeeAll,size: 20,),
                  const SizedBox(width: 4,),
                  Text("Sent",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),)
                ],))
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image2),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title3,style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                Text(title4,style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(MyColor.eSeeAll),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  ),
                  child: Text("Invite",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)
              ),
            )
          ],
        ),
      ],
    );
  }
}
