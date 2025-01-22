import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/notification_screen/screen_two/widget/frist.dart';
import 'package:event/ui/screen/notification_screen/screen_two/widget/second.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class NotificationPageTwo extends StatelessWidget {
  const NotificationPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.softBlackColor,height: 20,width: 20,)),
            const Spacer(),
            Text("Notification",style: regularTextStyle18.copyWith(color: MyColor.blackColor)),
            const Spacer(),
            Image(image: AssetImage(MyImage.searchIcon),color: MyColor.softBlackColor,height: 20,width: 20,),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon:Image(image: AssetImage(MyImage.threeDotMenu),color: MyColor.softBlackColor,height: 20,width: 20,),
            )
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Unread",style: regularTextStyle18.copyWith(color: MyColor.blackColor,fontSize: 22),),
                const SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  width: 25,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: MyColor.eSeeAll,width: 2)
                  ),
                  child: Text("2",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),
                )
                ),
              ],
            ),
            const SizedBox(height: 25,),
            Frist(image: MyImage.profile, title1: "Michel Modusodun", title2: "Just now"),
            const SizedBox(height: 20,),
            Second(image: MyImage.profile, title1: "MHR Minhaz", title2: "1 min ago"),
            const SizedBox(height: 25,),
            Row(
              children: [
                Text("Yesterday",style: regularTextStyle18.copyWith(color: MyColor.blackColor,fontSize: 22),),
                const SizedBox(width: 10,),
                Container(
                    alignment: Alignment.center,
                    width: 25,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: MyColor.greyColor,width: 2)
                    ),
                    child: Text("2",style: regularTextStyle14.copyWith(color: MyColor.greyColor),
                    )
                ),
              ],
            ),
            const SizedBox(height: 25,),
            Frist(image: MyImage.profile, title1: "Michel Modusodun", title2: "3h ago"),
            const SizedBox(height: 20,),
            Second(image: MyImage.profile, title1: "MHR Minhaz", title2: "5h ago"),
            const SizedBox(height: 20,),
            Frist(image: MyImage.profile, title1: "Kabir Khan", title2: "20h ago"),
          ],
        ),
      ),),
    );
  }
}
