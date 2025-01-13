import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}
List<String> messageList=[
  "Hi How are you",
  "I am fine thanks and you?",
  "I am also fine are you work today",
  "Yes i am working now ",
  "Hi How are you?",
  "I am fine thanks and you",
  "Hi How are you",
  "I am fine thanks and you?",
  "I am also fine are you work today",
  "Yes i am working now ",
  "Hi How are you?",
  "I am fine thanks and you",

];

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColor.blackColor)
              ),
              child: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back),),
            ),
            Column(
              children: [
                const SizedBox(height: 5,),
                Stack(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(MyImage.me),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      bottom: 0,
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
                Text("Md Hafizur Rahman",style: regularTextStyle,),
              ],
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: MyColor.blackColor)
              ),
              child: IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert_outlined),)
            ),
          ],
        ),
      ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: double.infinity,
                  alignment: index % 2==0? Alignment.topRight:Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    color: index % 2==0? MyColor.messageMainColor:MyColor.messageSecondColor,
                  ),
                  child: Text("${messageList[index]}"),
                );
              },
            )
        ),
    );
  }
}
