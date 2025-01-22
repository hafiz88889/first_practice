import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/booking_screen/screen/widget/top_circle_widget.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_one_and_two/screen/tiket_page.dart';
import 'package:event/ui/screen/chatting_page_one/screen_page/page_one.dart';
import 'package:event/ui/screen/invite_friend_screen/screen/invite_page.dart';
import 'package:event/ui/screen/organizer_profile/Screen/organizer_page.dart';
import 'package:flutter/material.dart';

class ConsertPage extends StatefulWidget {
  const ConsertPage({super.key});

  @override
  State<ConsertPage> createState() => _ConsertPageState();
}

class _ConsertPageState extends State<ConsertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImage.bigBanner),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 30,
                  top: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.whiteColor.withAlpha(150),
                          ),
                          child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.whiteColor,height: 15,width: 15,),
                        ),
                      ),
                      const SizedBox(width: 240,),
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColor.whiteColor.withAlpha(150),
                        ),
                        child: Image(image: AssetImage(MyImage.love),color: MyColor.redColor,height: 15,width: 15,),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 600,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shere Bangla Brand \nMusic Consert",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: MyColor.eSeeAll,
                              size: 20,
                            ),
                            Text(
                              "ABC Avinue Dhaka,1212",
                              style: regularTextStyle14.copyWith(
                                  color: MyColor.whiteColor, fontSize: 12),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Image(
                              image: AssetImage(MyImage.dateIcon),
                              height: 20,
                              width: 20,
                              color: MyColor.eSeeAll,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("25-27 October 22",
                                style:
                                    regularTextStyle14.copyWith(fontSize: 12))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(MyImage.profile),
                                ),
                                Positioned(
                                  left: 15,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 28,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 43,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 57,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: MyColor.eSeeAll,
                                    child: Text(
                                      "5K+",
                                      style: regularTextStyle14.copyWith(
                                          fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Text(
                              "15.7k+ Members are joined",
                              style: regularTextStyle14.copyWith(fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor:
                                    WidgetStateProperty.all(MyColor.eSeeAll)),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    padding: const EdgeInsets.all(16.0),
                                    height: 500,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Shere Bangla Consert",
                                              style:
                                                  regularTextStyle18.copyWith(
                                                      color:
                                                          MyColor.blackColor),
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                                backgroundColor: WidgetStateProperty.all(Colors.orangeAccent[100])
                                              ),
                                                onPressed: () {
                                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketPage));
                                                },
                                                child: Text(
                                                  "\$299 USD",
                                                  style: regularTextStyle16
                                                      .copyWith(
                                                          color:
                                                              MyColor.eSeeAll),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: MyColor.eSeeAll,
                                              size: 20,
                                            ),
                                            Text(
                                              "ABC Avinue Dhaka,1212",
                                              style:
                                                  regularTextStyle14.copyWith(
                                                      color: MyColor.blackColor,
                                                      fontSize: 12),
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            Image(
                                              image:
                                                  AssetImage(MyImage.dateIcon),
                                              height: 20,
                                              width: 20,
                                              color: MyColor.eSeeAll,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text("25-27 October 22",
                                                style:
                                                    regularTextStyle14.copyWith(
                                                        fontSize: 12,
                                                        color:
                                                            MyColor.blackColor))
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Text(
                                              "15.7k+ Members are joined",
                                              style:
                                                  regularTextStyle14.copyWith(
                                                      fontSize: 10,
                                                      color:
                                                          MyColor.blackColor),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundImage: AssetImage(
                                                      MyImage.profile),
                                                ),
                                                Positioned(
                                                  left: 15,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundImage: AssetImage(
                                                        MyImage.profile),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 28,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundImage: AssetImage(
                                                        MyImage.profile),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 43,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundImage: AssetImage(
                                                        MyImage.profile),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 57,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor:
                                                        MyColor.eSeeAll,
                                                    child: Text(
                                                      "5K+",
                                                      style: regularTextStyle14
                                                          .copyWith(
                                                              fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 70,
                                            ),
                                            TextButton(onPressed: (){
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context, builder: (BuildContext contex){
                                              return const InvitePage();
                                            });
                                            }, child: Text("VIEW ALL/INVITE",style: regularTextStyle14.copyWith(fontSize: 10,color: MyColor.eSeeAll),))
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                InkWell(
                                                  onTap:(){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OrganizerProfile()));
                                                    },
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        MyImage.profile),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 27,
                                                  left: 27,
                                                  child: SizedBox(
                                                    height: 12,
                                                    width: 12,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          MyColor.greenColor,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Md Hafizur Rahman",
                                                  style: regularTextStyle16
                                                      .copyWith(
                                                          color: MyColor
                                                              .blackColor),
                                                ),
                                                Text(
                                                  "Event Organizer",
                                                  style: regularTextStyle14
                                                      .copyWith(
                                                          color: MyColor
                                                              .searchText),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:MyColor.whiteColor,
                                              ),
                                              child:Icon(
                                                Icons.message,
                                                color: MyColor.blackColor,
                                                size: 30,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: MyColor.whiteColor
                                              ),
                                              child:Icon(
                                                Icons.phone,
                                                color: MyColor.blackColor,
                                                size: 30,
                                              ),
                                            ),

                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Description",
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.blackColor),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text:
                                                  "A concert is a live music performance where artists, bands, or orchestras entertain an audience with their talent and energy. Concerts are vibrant, immersive events that bring together people to celebrate music, artistry, and culture. They can vary in size, style, and purpose, catering to different genres and audiences.",
                                              style:
                                                  regularTextStyle14.copyWith(
                                                color: MyColor.searchText,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "   Read More",
                                                  style: regularTextStyle14
                                                      .copyWith(
                                                          color:
                                                              MyColor.eSeeAll),
                                                )
                                              ]),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: MyColor
                                                          .eTopBackColor)),
                                              child:
                                                  const Icon(Icons.bookmark_border),
                                            ),
                                            // SizedBox(
                                            //   height: 50,
                                            //   width: 80,
                                            //   child: OutlinedButton(
                                            //       onPressed: () {},
                                            //       child: const Icon(
                                            //           Icons.favorite)),
                                            // ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            SizedBox(
                                              height: 50,
                                              width: 250,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          MyColor
                                                              .eTopBackColor),
                                                  shape: WidgetStateProperty.all(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10))),
                                                ),
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(16.0),
                                                            height: 500,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                const SizedBox(
                                                                  height: 30,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      "Shere Bangla Consert",
                                                                      style: regularTextStyle18
                                                                          .copyWith(
                                                                              color:
                                                                                  MyColor.blackColor),
                                                                    ),
                                                                    ElevatedButton(
                                                                        style: ButtonStyle(
                                                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                                                            backgroundColor: WidgetStateProperty.all(Colors.orangeAccent[100])
                                                                        ),
                                                                        onPressed: () {},
                                                                        child: Text(
                                                                          "\$299 USD",
                                                                          style: regularTextStyle16
                                                                              .copyWith(
                                                                              color:
                                                                              MyColor.eSeeAll),
                                                                        )),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                    height: 20),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .location_on,
                                                                      color: MyColor
                                                                          .eSeeAll,
                                                                      size: 20,
                                                                    ),
                                                                    Text(
                                                                      "ABC Avinue Dhaka,1212",
                                                                      style: regularTextStyle14.copyWith(
                                                                          color: MyColor
                                                                              .blackColor,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 25,
                                                                    ),
                                                                    Image(
                                                                      image: AssetImage(
                                                                          MyImage
                                                                              .dateIcon),
                                                                      height:
                                                                          20,
                                                                      width: 20,
                                                                      color: MyColor
                                                                          .eSeeAll,
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                        "25-27 October 22",
                                                                        style: regularTextStyle14.copyWith(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                MyColor.blackColor))
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                    height: 20),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      "15.7k+ Members are joined",
                                                                      style: regularTextStyle14.copyWith(
                                                                          fontSize:
                                                                              10,
                                                                          color:
                                                                              MyColor.blackColor),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 15,
                                                                    ),
                                                                    Stack(
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              12,
                                                                          backgroundImage:
                                                                              AssetImage(MyImage.profile),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              15,
                                                                          child:
                                                                              CircleAvatar(
                                                                            radius:
                                                                                12,
                                                                            backgroundImage:
                                                                                AssetImage(MyImage.profile),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              28,
                                                                          child:
                                                                              CircleAvatar(
                                                                            radius:
                                                                                12,
                                                                            backgroundImage:
                                                                                AssetImage(MyImage.profile),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              43,
                                                                          child:
                                                                              CircleAvatar(
                                                                            radius:
                                                                                12,
                                                                            backgroundImage:
                                                                                AssetImage(MyImage.profile),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              57,
                                                                          child:
                                                                              CircleAvatar(
                                                                            radius:
                                                                                12,
                                                                            backgroundColor:
                                                                                MyColor.eSeeAll,
                                                                            child:
                                                                                Text(
                                                                              "5K+",
                                                                              style: regularTextStyle14.copyWith(fontSize: 10),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 70,
                                                                    ),
                                                                    Text(
                                                                      "VIEW ALL / INVITE",
                                                                      style: regularTextStyle14.copyWith(
                                                                          color: MyColor
                                                                              .eSeeAll,
                                                                          fontSize:
                                                                              10),
                                                                    )
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 25,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Stack(
                                                                      children: [
                                                                        InkWell(
                                                                          onTap:(){
                                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> OrganizerProfile()));
                                                                          },
                                                                          child: CircleAvatar(
                                                                            backgroundImage:
                                                                                AssetImage(MyImage.profile),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top: 27,
                                                                          left: 27,
                                                                          child: SizedBox(
                                                                            height: 12,
                                                                            width: 12,
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
                                                                          "Md Hafizur Rahman",
                                                                          style:
                                                                              regularTextStyle16.copyWith(color: MyColor.blackColor),
                                                                        ),
                                                                        Text(
                                                                          "Event Organizer",
                                                                          style:
                                                                              regularTextStyle14.copyWith(color: MyColor.searchText),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const Spacer(),
                                                                    Container(
                                                                      height: 50,
                                                                      width: 50,
                                                                      decoration: const BoxDecoration(
                                                                        shape: BoxShape.circle,
                                                                        color: Colors.white,
                                                                      ),
                                                                      child:Icon(
                                                                        Icons.message,
                                                                        color: MyColor.blackColor,
                                                                        size: 30,
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 20,
                                                                    ),
                                                                    Container(
                                                                      height: 50,
                                                                      width: 50,
                                                                      decoration: const BoxDecoration(
                                                                        shape: BoxShape.circle,
                                                                        color: Colors.white,
                                                                      ),
                                                                      child:Icon(
                                                                        Icons.phone,
                                                                        color: MyColor.blackColor,
                                                                        size: 30,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 15,
                                                                ),
                                                                Text(
                                                                  "Description",
                                                                  style: regularTextStyle18
                                                                      .copyWith(
                                                                          color:
                                                                              MyColor.blackColor),
                                                                ),
                                                                const SizedBox(
                                                                  height: 15,
                                                                ),
                                                                RichText(
                                                                  text:
                                                                      TextSpan(
                                                                    text:
                                                                        "A concert is a live music performance where artists, bands, or orchestras entertain an audience with their talent and energy. Concerts are vibrant, immersive events that bring together people to celebrate music, artistry, and culture. They can vary in size, style, and purpose, catering to different genres and audiences.",
                                                                    style: regularTextStyle14
                                                                        .copyWith(
                                                                      color: MyColor
                                                                          .searchText,
                                                                    ),
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            "   Read More",
                                                                        style: regularTextStyle14.copyWith(
                                                                            color:
                                                                                MyColor.eSeeAll),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const ChattingPageOne()));},
                                                                  child:
                                                                      Container(
                                                                    height: 50,
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius: const BorderRadius.only(
                                                                          topLeft: Radius.circular(20),
                                                                          topRight: Radius.circular(20)),
                                                                      color: MyColor.eTopBackColor,
                                                                    ),
                                                                    child: Center(
                                                                        child: Text(
                                                                      "Message",
                                                                      style: regularTextStyle16.copyWith(
                                                                          color: MyColor.whiteColor),
                                                                    )
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 30,
                                                            right: 30,
                                                            bottom: 450,
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(15),
                                                              height: 110,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                color: MyColor
                                                                    .whiteColor,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  TopCircleWidget(
                                                                      circle: MyColor
                                                                          .deepOrange,
                                                                      title:
                                                                          "Cell",
                                                                      boxIcon:
                                                                          MyImage
                                                                              .phone),
                                                                  TopCircleWidget(
                                                                      circle: MyColor
                                                                          .deepBlue,
                                                                      title:
                                                                          "Direction",
                                                                      boxIcon:
                                                                          MyImage
                                                                              .directions),
                                                                  InkWell(
                                                                    onTap:(){
                                                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketPage()));},
                                                                    child: TopCircleWidget(
                                                                        circle: MyColor.deepOrange,
                                                                        title: "My Ticket",
                                                                        boxIcon: MyImage.ticket),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  "BUY A TIKET",
                                                  style: regularTextStyle16
                                                      .copyWith(
                                                          color: MyColor
                                                              .whiteColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              "CHOICE YOUR SEAT",
                              style: regularTextStyle16.copyWith(
                                  color: MyColor.whiteColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
