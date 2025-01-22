import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/notification_screen/screen_two/screen/notification_page.dart';
import 'package:flutter/material.dart';

class NotificationPageOne extends StatelessWidget {
  const NotificationPageOne({super.key});

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
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPageTwo()));}, icon:Image(image: AssetImage(MyImage.threeDotMenu),color: MyColor.softBlackColor,height: 20,width: 20,),
            )
          ],
        ),
      ),
      body: Padding(padding:const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColor.redColor,
                image: DecorationImage(image: AssetImage(MyImage.notification),fit: BoxFit.cover)
              ),
            ),
            const SizedBox(height: 40,),
            Text("Ups! there are no notification ",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 30,),
            Text("You will be noitified your activity on events \n              youre collabration on ",style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
          ],
        ),
      ),
      ),
    );
  }
}
