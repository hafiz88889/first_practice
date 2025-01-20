import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  final String image;
  final String title;
  final Color butonColor;
  const Interest({super.key,
    required this.image,
    required this.title,
    required this.butonColor,
  });

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const  EdgeInsets.all(5),
      height: 50,
      width: 105,
      margin: const EdgeInsets.only(left: 10,bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: widget.butonColor,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColor.boxShadowColor,
            ),
            child: Image(image: AssetImage(widget.image),),
          ),
          const SizedBox(width: 8,),
          Text(widget.title,style: regularTextStyle14.copyWith(color: MyColor.blackColor),)
        ],
      ),
    );
  }
}
