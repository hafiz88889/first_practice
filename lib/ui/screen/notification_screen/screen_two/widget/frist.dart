import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class Frist extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  const Frist({super.key,
  required this.image,
  required this.title1,
  required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: MyColor.greyColor.withAlpha(100),
              blurRadius: 0.005,
              spreadRadius: 0,
            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: regularTextStyle14.copyWith(color: MyColor.blackColor,fontSize: 12)),
              Text("following you",style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 10)),

            ],
          ),
          const SizedBox(width: 5,),
          Text("following ",style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 10)),
          const Spacer(),
          Text(title2,style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 10)),


        ],
      ),
    );
  }
}
