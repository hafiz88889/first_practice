import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class MemberPageCard extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  const MemberPageCard({super.key,
    required this.image,
    required this.title1,
    required this.title2,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: hedingText.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text(title2,style: hedingText.copyWith(fontWeight: FontWeight.normal,color: MyColor.searchText),),
            ],
          ),
        ],
      ),
    );
  }
}
