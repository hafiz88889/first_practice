import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_two/widget/image_widget.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_one.dart';
import 'package:event/ui/screen/chatting_page_two/widget/text_message_widget_two.dart';
import 'package:event/ui/screen/chatting_page_two/widget/write_message_page.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ReplyInput(),
      backgroundColor: MyColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:SingleChildScrollView(
            child:  Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImage.banner),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 50,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: MyColor.eTopBackColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 5,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyColor.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Message",
                                  style: regularTextStyle18.copyWith(
                                      color: MyColor.whiteColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 70,
                  width: double.infinity,
                  color: MyColor.whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shere Bangla Concert",
                        style: regularTextStyle16,
                      ),
                      Image(
                        image: AssetImage(MyImage.threeDotMenu),
                        height: 25,
                        width: 25,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Text("08:50 PM",style: regularTextStyle14.copyWith(color: MyColor.searchText),),
                const TextMessageWidgetOne(title: "Hello Bro"),
                const SizedBox(
                  height: 10,
                ),
                const TextMessageWidgetOne(title: "What's up bro"),
                const SizedBox(
                  height: 15,
                ),
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
                    )
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
                const SizedBox(height: 10,),
                Text("08:50 PM",style: regularTextStyle14.copyWith(color: MyColor.searchText),),
                const SizedBox(height: 10,),
                const TextMessageWidgetOne(title: "Hello Bro"),
                const SizedBox(height: 10,),
                const TextMessageWidgetOne(title: "Hello Bro"),
                const SizedBox(height: 10,),
                const TextMessageWidgetOne(title: "Hello Bro"),

              ],
            ),
          )
        ),
      ),

    );
  }
}
