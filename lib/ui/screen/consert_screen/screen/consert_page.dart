import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/booking_screen/screen/widget/top_circle_widget.dart';
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
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.expand_circle_down_rounded,
                        color: MyColor.whiteColor,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                    ),
                    Icon(
                      Icons.heart_broken,
                      color: MyColor.redColor,
                      size: 50,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 600,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
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
                              style: regularTextStyle14.copyWith(fontSize: 12))
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
                                  backgroundImage: AssetImage(MyImage.profile),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(MyImage.profile),
                                ),
                              ),
                              Positioned(
                                left: 43,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(MyImage.profile),
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
                                        Text(
                                          "Shere Bangla Consert",
                                          style: regularTextStyle18.copyWith(
                                              color: MyColor.blackColor),
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
                                            Text(
                                              "VIEW ALL / INVITE",
                                              style:
                                                  regularTextStyle14.copyWith(
                                                      color: MyColor.eSeeAll,
                                                      fontSize: 10),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      MyImage.profile),
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
                                            Icon(
                                              Icons.message,
                                              color: MyColor.blackColor,
                                              size: 30,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.phone,
                                              color: MyColor.blackColor,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
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
                                            SizedBox(
                                              height: 50,
                                              width: 80,
                                              child: OutlinedButton(
                                                  onPressed: () {},
                                                  child: const Icon(
                                                      Icons.favorite)),
                                            ),
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
                                                                SizedBox(height: 50,),
                                                                Text(
                                                                  "Shere Bangla Consert",
                                                                  style: regularTextStyle18
                                                                      .copyWith(
                                                                          color:
                                                                              MyColor.blackColor),
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
                                                                  height: 40,
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Stack(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          backgroundImage:
                                                                              AssetImage(MyImage.profile),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              27,
                                                                          left:
                                                                              27,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                12,
                                                                            width:
                                                                                12,
                                                                            child:
                                                                                CircleAvatar(
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
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
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
                                                                    Spacer(),
                                                                    Icon(
                                                                      Icons
                                                                          .message,
                                                                      color: MyColor
                                                                          .blackColor,
                                                                      size: 30,
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 20,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .phone,
                                                                      color: MyColor
                                                                          .blackColor,
                                                                      size: 30,
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                  height: 25,
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
                                                                  text: TextSpan(
                                                                      text: "A concert is a live music performance where artists, bands, or orchestras entertain an audience with their talent and energy. Concerts are vibrant, immersive events that bring together people to celebrate music, artistry, and culture. They can vary in size, style, and purpose, catering to different genres and audiences.",
                                                                      style: regularTextStyle14.copyWith(
                                                                        color: MyColor
                                                                            .searchText,
                                                                      ),
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "   Read More",
                                                                          style:
                                                                              regularTextStyle14.copyWith(color: MyColor.eSeeAll),
                                                                        )
                                                                      ]),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 30,
                                                            right :30,
                                                            bottom: 450,
                                                            child: Container(
                                                              padding: EdgeInsets.all(15),
                                                              height: 110,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(15),
                                                                color: MyColor.whiteColor,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  TopCircleWidget(circle: MyColor.deepOrange, title: "Cell", boxIcon: MyImage.phone),
                                                                  TopCircleWidget(circle: MyColor.deepBlue , title: "Direction", boxIcon: MyImage.directions),
                                                                  TopCircleWidget(circle: MyColor.deepOrange, title: "My Ticket", boxIcon: MyImage.ticket),
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
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
