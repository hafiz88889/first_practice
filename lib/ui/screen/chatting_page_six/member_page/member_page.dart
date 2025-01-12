import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_six/widget/card_widget.dart';
import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage(MyImage.backArrowIcon),height: 20,width: 20,color: MyColor.searchText,)),
            Text("Members",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.threeDotMenu),height: 20,width: 20,color: MyColor.searchText,))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
            MemberPageCard(image: MyImage.profile, title1: "Hafizur Rahman", title2: "2k follower",),
          ],
        ),
      )
    );
  }
}
