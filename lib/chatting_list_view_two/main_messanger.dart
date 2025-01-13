import 'package:first_practice/chatting_list_view_two/widget/card_widget.dart';
import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class MainMessanger extends StatefulWidget {
  const MainMessanger({super.key});

  @override
  State<MainMessanger> createState() => _MainMessangerState();
}

class _MainMessangerState extends State<MainMessanger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundColor: MyColor.messageMainColor,
                child: Icon(Icons.chat_sharp,color: MyColor.whiteColor,),
              ),
            ),
            const Text("Chat Room"),
            Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColor.borderColor)
                ),
                child: IconButton(onPressed: (){}, icon: Stack(
                  children: [
                    const Icon(Icons.notifications_none_outlined),
                    Positioned(
                      top: 2,
                      right:3,
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: CircleAvatar(
                          backgroundColor: MyColor.messageMainColor,
                        ),
                      ),
                    )
                  ],
                ),)
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: MyColor.borderColor,
                  ),
                )
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(MyImage.myImage1),
                    ),
                  ),
                  const  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("title1",style: regularTextStyle.copyWith(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Text("title2",style: regularTextStyle.copyWith(fontWeight: FontWeight.normal),),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("title3",style: regularTextStyle,),
                      const  SizedBox(height: 10,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.messageMainColor
                        ),
                        child: Center(child: Text("title4",style: regularTextStyle,)),
                      )
                    ],
                  ),
                ],
              );

            },
          )
        ],
      ),
    );
  }
}
