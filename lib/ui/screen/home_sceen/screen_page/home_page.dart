import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/consert_screen/screen/consert_page.dart';
import 'package:event/ui/screen/home_sceen/widget/choice_categori_widget.dart';
import 'package:event/ui/screen/home_sceen/widget/middle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.eTopBackColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                  CircleAvatar(
                  backgroundImage: AssetImage(MyImage.profile),
                ),
                Positioned(
                  top: 25,
                  left: 25,
                  child: SizedBox(
                    height: 15,
                    width: 15,
                    child: CircleAvatar(
                      backgroundColor: MyColor.eSeeAll,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
             width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Hi Wellcome",
                      style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 12),
                    ),
                    Image(image: AssetImage(MyImage.hand),height: 30,width: 30,)
                  ],
                ),
                Text(
                  "Md Rafi Islam",
                  style: regularTextStyle18,
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current location",
                  style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 12),
                ),
                Row(
                  children: [
                    Text(
                      "Dhaka,1202",
                      style: regularTextStyle18,
                    ),
                    Icon(
                      Icons.location_on,
                      color: MyColor.eSeeAll,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  color: MyColor.eTopBackColor,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 49,
                              width: 270,
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: MyColor.whiteColor,
                                    size: 30,
                                  ),
                                  hintText: "Find amazing events",
                                  hintStyle: regularTextStyle14.copyWith(
                                      color: MyColor.searchText),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  filled: true,
                                  fillColor: MyColor.searchBackColor,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.searchBackColor,
                              ),
                              child: Icon(Icons.filter_alt_outlined,color: MyColor.whiteColor,size: 40,),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Events",
                              style: regularTextStyle18,
                            ),
                            Image(image: AssetImage(MyImage.fire),height: 30,width: 30,),
                           const Spacer(),
                            Text(
                              "View All",
                              style: regularTextStyle14.copyWith(
                                  color: MyColor.eSeeAll),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 10,
                  right: 10,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ConsertPage()));
                            },
                            child: Middle(
                                image: MyImage.banner,
                                title1: "International Brand Music Company",
                                title2: "12-15 October,22",
                                title3: "ABC Avenue Dhaka 1212"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Middle(
                              image: MyImage.banner2,
                              title1: "Atif Aslam Brand",
                              title2: "12-15 October,22",
                              title3: "Army Stadium Dhaka"),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 260,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choice By Categories",
                    style:
                        regularTextStyle18.copyWith(color: MyColor.blackColor),
                  ),
                  Text(
                    "VIEW ALL",
                    style: regularTextStyle16.copyWith(
                        color: MyColor.eSeeAll, fontSize: 12),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceCategoriWidget(
                      image: MyImage.musi1c,
                      title: "Design",
                      butonColor: MyColor.eSeeAll
                  ),
                  ChoiceCategoriWidget(
                      image: MyImage.art,
                      title: "Art",
                      butonColor: MyColor.whiteColor
                  ),
                  ChoiceCategoriWidget(
                      image: MyImage.sports,
                      title: "Sports",
                      butonColor: MyColor.whiteColor
                  ),
                  ChoiceCategoriWidget(
                      image: MyImage.music,
                      title: "Music",
                      butonColor: MyColor.whiteColor
                  ),
                ],
              ),
            ),
           const SizedBox(height: 15,),
            Container(
              height: 90,
              width: 387,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.whiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(MyImage.meetup),fit: BoxFit.cover)
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15,),
                      Text("Desiner Meetup 2022",style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("03 Dec 2022",style: regularTextStyle14.copyWith(color: MyColor.searchText,fontSize: 10),),
                          const SizedBox(width: 5,),
                          SizedBox(
                            height: 10,
                            width: 10,
                            child: CircleAvatar(
                              backgroundColor: MyColor.eSeeAll,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text("Gulsha,Dhaka",style: regularTextStyle14.copyWith(color: MyColor.searchText),),
                        ],
                      ),
                    ],
                  ),
                 const Spacer(),
                  Column(
                    children: [
                      const SizedBox(height: 15,),
                      Text("\$10. Usd",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),),
                      const SizedBox(height: 10,),
                      Text("Join Now",style: regularTextStyle14.copyWith(color: MyColor.blackColor),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
