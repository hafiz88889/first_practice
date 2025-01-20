import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  final String image;
  final String title;
  const Items({super.key,
  required this.image,
  required this.title,
  });

  @override
  State<Items> createState() => _ItemsState();
}
bool isChecked=false;
class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        Image(image: AssetImage(widget.image),height: 30,width: 60,),
        const SizedBox(width: 10,),
        Text(widget.title,style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
        const Spacer(),
        Checkbox(
            activeColor: MyColor.eSeeAll,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            value: isChecked,
            onChanged: (value){
              setState(() {
                isChecked=value!;
              });
            })
      ],
    );
  }
}
