import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/event_screen/screen_page/event_page.dart';
import 'package:event/ui/screen/messanger_screen/screen_page/messanger_page.dart';
import 'package:flutter/material.dart';

class CustomTabBarExample extends StatefulWidget {
  @override
  _CustomTabBarExampleState createState() => _CustomTabBarExampleState();
}

class _CustomTabBarExampleState extends State<CustomTabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 30,
                  color: MyColor.blackColor,
                ),
              ),
              const Spacer(),
              Text(
                "Events",
                style: regularTextStyle18.copyWith(
                    color: MyColor.blackColor, fontSize: 22),
              ),
              const Spacer(),
              Icon(
                Icons.search,
                size: 30,
                color: MyColor.blackColor,
              ),
              const SizedBox(width: 8,),
              Icon(
                Icons.more_vert_outlined,
                size: 30,
                color: MyColor.blackColor,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 60,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
            decoration: BoxDecoration(
              color: MyColor.backgroundColor1,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TabBar(
              labelStyle: regularTextStyle16,
              controller:_tabController,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              labelColor:MyColor.eSeeAll,
              unselectedLabelColor:MyColor.searchText,
              tabs:const  [
                Tab(
                  text: 'UPCOMING',
                ),
                Tab(
                  text: 'PAST EVENTS',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:const  [
                EventPage(),
                MessangerPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
