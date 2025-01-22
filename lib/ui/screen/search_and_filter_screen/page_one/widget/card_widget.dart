import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class CardWidgetPageOne extends StatefulWidget {
  final image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const CardWidgetPageOne({super.key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  State<CardWidgetPageOne> createState() => _CardWidgetPageOneState();
}

class _CardWidgetPageOneState extends State<CardWidgetPageOne> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 90,
      width: 387,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      padding:const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColor.whiteColor,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              Text(widget.title1,style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Text(widget.title2,style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 10),),
                  const SizedBox(width: 5,),
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: CircleAvatar(
                      backgroundColor: MyColor.eSeeAll,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text(widget.title3,style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 10),)
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const SizedBox(height: 15,),
              Text(widget.title4,style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),),
              const SizedBox(height: 10,),
              Text("Join Now",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
            ],
          )
        ],
      ),
    );
  }
}
