import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class ReplyInput extends StatelessWidget {
  const ReplyInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: MyColor.whiteColor,
      child:Row(
        children: [
         SizedBox(
           height: 50,
           width: 220,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "write a reply....",hintStyle: regularTextStyle14.copyWith(color: MyColor.searchText),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                 )
               ),
             ),
           ),
         ),
          IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.emoji),height: 25,width: 25,color: MyColor.searchText,)),
          IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.imageIcon),height: 25,width: 25,color: MyColor.searchText,)),
          IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.uploadFileIcon),height: 25,width: 25,color: MyColor.searchText,)),
        ],
      ),
    );
  }
}