import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_one_and_two/screen/tiket_page.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/ticket_download_page/screen/ticket_download.dart';
import 'package:event/ui/screen/chatting_page_one/screen_page/page_one.dart';
import 'package:event/ui/screen/consert_screen/screen/consert_page.dart';
import 'package:event/ui/screen/date_picker/date_picker_screen/date_picker_page.dart';
import 'package:event/ui/screen/event_screen/screen_page/event_page.dart';
import 'package:event/ui/screen/home_sceen/widget/choice_categori_widget.dart';
import 'package:event/ui/screen/home_sceen/widget/middle.dart';
import 'package:event/ui/screen/messanger_screen/screen_page/messanger_page.dart';
import 'package:event/ui/screen/messanger_screen/widget/card_widget_page.dart';
import 'package:event/ui/screen/profile_screen/profile_main/screen/profile_main.dart';
import 'package:event/ui/screen/tab_controller/tab_control/tab_control_page.dart';
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
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.eTopBackColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileMain()));
                    },
                    child: CircleAvatar(
                    backgroundImage: AssetImage(MyImage.profile),
                                    ),
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
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
              children: [
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close,size: 30,)),
                  ],
                ),
                Row(
                  children: [
                   Container(
                     height: 70,
                     width: 70,
                     decoration: BoxDecoration(
                       border: Border.all(color: MyColor.eSeeAll,width: 3),
                       shape: BoxShape.circle,
                       color: MyColor.eSeeAll,
                       image: DecorationImage(image: AssetImage(MyImage.profile),fit: BoxFit.cover)
                     ),
                   ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MD Rafi Islam',
                          style: regularTextStyle16.copyWith(color: MyColor.blackColor),
                        ),
                        Text(
                          'rafiisiamapon4@gmail.com',
                          style: regularTextStyle14.copyWith(color: MyColor.blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('My Profile'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileMain()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.message),
                    title: const Text('Message'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChattingPageOne()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: const Text('Calendar'),
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const DatePickerPage()));
                    },
                  ),
                  ListTile(
                    leading:  Image(image: AssetImage(MyImage.ticket),height: 35,width: 35,),
                    title: const Text('Ticket'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketDownload()));
                    },
                  ),
                  ListTile(
                    leading:  Image(image: AssetImage(MyImage.ticket),height: 35,width: 35,),
                    title: const Text("Buy Ticket"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketPage()));
                    },
                  ),
                  ListTile(
                    leading:  Image(image: AssetImage(MyImage.banner2),height: 35,width: 35,),
                    title: const Text('Event'),
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomTabBarExample()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('Helps & FAQs'),
                    onTap: () {
                      // Handle Helps & FAQs tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Sign Out'),
                    onTap: () {
                      // Handle Sign Out tap
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          ),
                          child: Row(children: [
                        Icon(Icons.workspace_premium,color: MyColor.whiteColor,size: 30,),
                        const SizedBox(width: 10,),
                        Text("Upgrade Pro",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)
                      ],)),
                    ),
                  )

                ],
              ),
            )
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
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomTabBarExample()));
                            },
                            child: Middle(
                                image: MyImage.banner2,
                                title1: "Atif Aslam Brand",
                                title2: "12-15 October,22",
                                title3: "Army Stadium Dhaka"),
                          ),
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
            CardWidgetPage(image: MyImage.meetup, title1: "Desiner Meet up 2022", title2: "03 Oct 2022", title3: "Gulshan Dhaka", title4: "\$10 USD"),
            CardWidgetPage(image: MyImage.meetup, title1: "Desiner Meet up 2022", title2: "03 Oct 2022", title3: "Gulshan Dhaka", title4: "\$10 USD"),
            CardWidgetPage(image: MyImage.meetup, title1: "Desiner Meet up 2022", title2: "03 Oct 2022", title3: "Gulshan Dhaka", title4: "\$10 USD"),
          ],
        ),
      ),
    );
  }
}
