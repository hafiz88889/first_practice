import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_four/screen_page/four_main_page.dart';
import 'package:event/ui/screen/chatting_page_one/widget/card_row_widget.dart';
import 'package:event/ui/screen/chatting_page_three/screen_page/main_screen.dart';
import 'package:event/ui/screen/chatting_page_two/screen/screen_page.dart';
import 'package:flutter/material.dart';

class ChattingPageOne extends StatefulWidget {
  const ChattingPageOne({super.key});

  @override
  State<ChattingPageOne> createState() => _ChattingPageOneState();
}

class _ChattingPageOneState extends State<ChattingPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
              Navigator.pop(context);
              },
              child: Image(
                image: AssetImage(MyImage.backArrowIcon),
                height: 20,
                width: 20,
                color: MyColor.searchText,
              ),
            ),
            Text(
              "Message",
              style: regularTextStyle18.copyWith(color: MyColor.blackColor),
            ),
            Image(
              image: AssetImage(MyImage.threeDotMenu),
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: MyColor.whiteColor,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Image(
                        image: AssetImage(MyImage.searchIcon),
                        height: 30,
                        width: 30,
                        color: MyColor.eSeeAll,
                      ),
                    ),
                    hintText: "Find Conversation",
                    hintStyle:
                        regularTextStyle14.copyWith(color: MyColor.searchText),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColor.searchText),
                      borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const PageTwo()));
                },
                child: CardRowWidget(
                    image: MyImage.profile,
                    title1: "Md Hafizur Rahman",
                    title2: "Hi :)",
                    title3: "Just Now ",
                    title4: "2"),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainScreen()));
                },
                child: CardRowWidget(
                    image: MyImage.fire,
                    title1: "Josep",
                    title2: "Hello",
                    title3: "3 min ago",
                    title4: "2"),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FourMainPage()));
                },
                child: CardRowWidget(
                    image: MyImage.banner2,
                    title1: "Shere Bangla Consert",
                    title2: "vai",
                    title3: "5 min ago ",
                    title4: "1"),
              ),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.apple,
                  title1: "Jamal",
                  title2: "Kemon acen",
                  title3: "10 min ago ",
                  title4: "1"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.google,
                  title1: "Md Hafizur Rahman",
                  title2: "Hi :)",
                  title3: "15 min ago ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Mohammod",
                  title2: "Hi ",
                  title3: "10 min ago ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Abul",
                  title2: "Hi ",
                  title3: "10 min ago ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Kuddus",
                  title2: "Hi",
                  title3: "30 min ago ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Md Hafizur Rahman",
                  title2: "Hi :)",
                  title3: "Just Now ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Md Hafizur Rahman",
                  title2: "Hi :)",
                  title3: "Just Now ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Md Hafizur Rahman",
                  title2: "Hi :)",
                  title3: "Just Now ",
                  title4: "2"),
              const SizedBox(height: 15,),
              CardRowWidget(
                  image: MyImage.profile,
                  title1: "Md Hafizur Rahman",
                  title2: "Hi :)",
                  title3: "Just Now ",
                  title4: ""),


            ],
          ),
        ),
      ),
    );
  }
}
