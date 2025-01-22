import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/home_sceen/widget/choice_categori_widget.dart';
import 'package:event/ui/screen/search_and_filter_screen/page_one/widget/card_widget.dart';
import 'package:flutter/material.dart';

class FilterPageOne extends StatelessWidget {
  const FilterPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.softBlackColor,height: 20,width: 20,)),
            const Spacer(),
            Text("Search",style: regularTextStyle18.copyWith(color: MyColor.blackColor,fontSize: 20),),
            const Spacer(),
          ],
        ),
      ),
      body: Padding(padding:const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: MyColor.blackColor,
                        size: 30,
                      ),
                      hintText: "Find amazing events",
                      hintStyle: regularTextStyle14.copyWith(
                          color: MyColor.searchText),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: MyColor.greyColor.withAlpha(150)),
                          borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      fillColor: MyColor.whiteColor,
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
                    color: MyColor.whiteColor,
                    boxShadow:[
                      BoxShadow(
                        color: MyColor.greyColor.withAlpha(100),
                        blurRadius: 1,
                      )
                    ]
                  ),
                  child: Icon(Icons.filter_alt_outlined,color: MyColor.eSeeAll,size: 40,),
                )
              ],
            ),
            const SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                      onTap:(){
                        showModalBottomSheet(
                          isScrollControlled: true,
                            context: context, builder: (BuildContext contex){
                          return Container(
                            padding:const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: MyColor.backgroundColor,
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30,),
                                Center(
                                  child: Container(
                                    height: 5,width: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: MyColor.greyColor.withAlpha(150)),
                                  ),
                                ),
                                const SizedBox(height: 15,),
                                Center(child: Text("Filter",style: regularTextStyle18.copyWith(color: MyColor.blackColor),)),
                                const SizedBox(height: 20,),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ChoiceByCategories(image: MyImage.musi1c, title: "Design", butonColor: MyColor.eSeeAll),
                                      ChoiceByCategories(image: MyImage.art, title: "Art", butonColor: MyColor.whiteColor),
                                      ChoiceByCategories(image: MyImage.sports, title: "Sports", butonColor: MyColor.eSeeAll),
                                      ChoiceByCategories(image: MyImage.music, title: "Music", butonColor: MyColor.whiteColor),
                                      ChoiceByCategories(image: MyImage.art, title: "Design", butonColor: MyColor.whiteColor),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15,),
                                Text("Time and Date",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    ElevatedButton(onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty.all(MyColor.softOrangeColor),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          ),
                                        ),
                                        child: Text("Today",style: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(250)),)
                                    ),
                                    const SizedBox(width: 10,),
                                    ElevatedButton(onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty.all(MyColor.eSeeAll),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          ),
                                        ),
                                        child: Text("Tomorrow",style: regularTextStyle14.copyWith(color: MyColor.whiteColor.withAlpha(250)),)
                                    ),
                                    const SizedBox(width: 10,),
                                    ElevatedButton(onPressed: (){},
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty.all(MyColor.softOrangeColor),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          ),
                                        ),
                                        child: Text("This Week",style: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(250)),)
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: MyColor.whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: MyColor.greyColor.withAlpha(100),
                                        blurRadius: 0.005
                                      )
                                    ]
                                  ),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage(MyImage.dateIcon),color: MyColor.eSeeAll,height: 20,width: 20,),
                                      const SizedBox(width: 10,),
                                      Text("Choice from Calender",style: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(150)),),
                                      const Spacer(),
                                      IconButton(onPressed: (){}, icon:const  Icon(Icons.arrow_forward_ios_outlined,size: 15,),color: MyColor.eSeeAll,)
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30,),
                                Text("Location",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                                const SizedBox(height: 15,),
                                Container(
                                  padding:const  EdgeInsets.symmetric(horizontal: 10),
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: MyColor.whiteColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: MyColor.greyColor.withAlpha(100),
                                            blurRadius: 0.005
                                        )
                                      ]
                                  ),
                                  child: Row(
                                    children: [
                                     Icon(Icons.location_on,size: 20,color: MyColor.eSeeAll,),
                                      const SizedBox(width: 10,),
                                      Text("Mirpur 10,Dhaka",style: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(150)),),
                                      const Spacer(),
                                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,size: 15,),color: MyColor.eSeeAll,)
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Select Price Range",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                                    Text("\$20-\$120",style: regularTextStyle18.copyWith(color: MyColor.eSeeAll),),
                                  ],
                                ),
                                const SizedBox(height: 300,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height:50,
                                        child: ElevatedButton(onPressed: (){},
                                            style: ButtonStyle(
                                              backgroundColor: WidgetStateProperty.all(MyColor.softOrangeColor),
                                              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                            ),
                                            child:Text("RESET",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),) ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                      child: SizedBox(
                                        height:50,
                                        child: ElevatedButton(onPressed: (){
                                          //Navigator.push(context, MaterialPageRoute(builder: (contex)=>const FilterPageTwo()));
                                        },
                                            style: ButtonStyle(
                                              backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                                              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                            ),
                                            child:Text("APPLY",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),) ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                          } ,
                  child: ChoiceByCategories(image: MyImage.musi1c, title: "Design", butonColor: MyColor.eSeeAll)),
                  ChoiceByCategories(image: MyImage.art, title: "Art", butonColor: MyColor.whiteColor),
                  ChoiceByCategories(image: MyImage.sports, title: "Sports", butonColor: MyColor.whiteColor),
                  ChoiceByCategories(image: MyImage.music, title: "Music", butonColor: MyColor.whiteColor),
                  ChoiceByCategories(image: MyImage.art, title: "Design", butonColor: MyColor.whiteColor),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Shere Bangla  Consert", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$15"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Atif Aslam Consert", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$25"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$30"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),
            const SizedBox(height: 10,),
            CardWidgetPageOne(image: MyImage.meetup, title1: "Desineer Meetup 2022", title2: "03 Oct 22", title3: "Gulshan,Dhaka.", title4: "\$10"),


          ],
        ),
      ),
      ),
    );
  }
}
