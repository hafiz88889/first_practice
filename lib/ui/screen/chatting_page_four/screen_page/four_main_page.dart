import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_five/screen_page/details_page.dart';
import 'package:event/ui/screen/chatting_page_two/widget/image_widget.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_one.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_two.dart';
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsPage()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(MyImage.banner2),
              ),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(child: Text("Today",style: regularTextStyle14.copyWith(color: MyColor.searchText),)),
            const SizedBox(height: 10,),
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 15,),
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(MyImage.profile),
                    ),
                    Positioned(
                      top: 27,
                      left: 27,
                      child: SizedBox(
                        height: 15,
                        width: 15,
                        child: CircleAvatar(
                          backgroundColor: MyColor.greenColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Zara Clera",
                      style: regularTextStyle16,
                    ),
                    Text(
                      "1m ago",
                      style: regularTextStyle14.copyWith(
                          color: MyColor.searchText),
                    ),
                  ],
                ),
              ],
            ),
            const TextMessageWidgetTwo(title: "This is no more here"),
            Row(
              children: [
                ImageWidget(image: MyImage.one),
                const SizedBox(width: 10,),
                ImageWidget(image: MyImage.two),
                const SizedBox(width: 10,),
                ImageWidget(image: MyImage.three),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(MyImage.fire),
                    ),
                    Positioned(
                      top: 27,
                      left: 27,
                      child: SizedBox(
                        height: 15,
                        width: 15,
                        child: CircleAvatar(
                          backgroundColor: MyColor.greenColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kamal",
                      style: regularTextStyle16,
                    ),
                    Text(
                      "5m ago",
                      style: regularTextStyle14.copyWith(
                          color: MyColor.searchText),
                    ),
                  ],
                ),
              ],
            ),
            const TextMessageWidgetTwo(title: "This is no more here"),
            const SizedBox(height: 15,),
            Text("08:50 PM",style: regularTextStyle14.copyWith(fontSize: 12,color: MyColor.searchText),),
            const TextMessageWidgetOne(title: "hello bro"),
            const SizedBox(height: 3,),
            const TextMessageWidgetOne(title: "hello bro"),

          ],
        ),
      ),
    );
  }
}
