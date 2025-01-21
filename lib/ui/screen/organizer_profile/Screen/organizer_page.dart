import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class OrganizerProfile extends StatefulWidget {
  @override
  _OrganizerProfileState createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.softBlackColor,height: 20,width: 20,)),
            const Spacer(),
            Text("Profile",style: regularTextStyle18.copyWith(color: MyColor.blackColor,fontSize: 22),),
            const Spacer(),
            Image(image: AssetImage(MyImage.threeDotMenu),height: 25,width: 25,)
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(MyImage.profile),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
                child: Text("MD Hafizur Rahman",style: regularTextStyle18.copyWith(color: MyColor.blackColor),)),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("1,089",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                  Text("Followers ",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                ],
              ),
              Column(
                children: [
                  Text("275",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                  Text("Following",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                ],
              ),
              Column(
                children: [
                  Text("10",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                  Text("Events",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                ],
              ),
            ],
          ),
        ),
            const Divider(),
            const SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColor.eSeeAll),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person,color: MyColor.whiteColor,size: 25,),
                          const SizedBox(width: 10,),
                          Text("Follow",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(MyColor.softOrangeColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.message,color: MyColor.eSeeAll,size: 25,),
                          const SizedBox(width: 10,),
                          Text("Message",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            TabBar(
              labelStyle: regularTextStyle16,
              controller:_tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              labelColor:MyColor.eSeeAll,
              unselectedLabelColor:MyColor.searchText,
              tabs:const  [
                Tab(
                  text: 'About',
                ),
                Tab(
                  text: 'Events',
                ),
                Tab(
                  text: 'Review',
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
