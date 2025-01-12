import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_two/widget/write_message_page.dart';
import 'package:flutter/material.dart';

class FourMainPage extends StatelessWidget {
  const FourMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage(MyImage.backArrowIcon),height: 20,width: 20,color: MyColor.searchText,)),
            CircleAvatar(
              backgroundImage: AssetImage(MyImage.banner2),
            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shere Bangla Consert",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                Text("100+ member",style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 10),),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.searchIcon),height: 25,width: 25,color: MyColor.searchText,)),
            IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.threeDotMenu),height: 25,width: 25,color: MyColor.searchText,)),
          ],
        ),
        backgroundColor: MyColor.whiteColor,
      ),
      bottomNavigationBar:const ReplyInput(),
    );
  }
}
