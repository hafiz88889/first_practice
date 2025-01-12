import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_one.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_two.dart';
import 'package:event/ui/screen/chatting_page_two/widget/write_message_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
              backgroundImage: AssetImage(MyImage.fire),
            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Josep",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                Text("info@gmail.com",style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 12),),
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
      body:Center(
        child: Column(
          children: [
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 3,),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 10,),
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetTwo(title: "Hello friend"),
            const SizedBox(height: 10,),
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 3,),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 3,),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 10,),
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetTwo(title: "Hello friend"),




          ],
        ),
      ),
    );
  }
}
