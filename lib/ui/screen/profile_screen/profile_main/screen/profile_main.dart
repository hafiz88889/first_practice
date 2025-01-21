import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/profile_screen/profile_edite/screen/edit_screen.dart';
import 'package:event/ui/screen/profile_screen/profile_main/widget/interest_widget.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

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
          ],
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 80,
                   backgroundColor: MyColor.eSeeAll,
                  ),
                ),
                Positioned(
                  left: 2,
                  right: 2,
                  top: 2,
                  bottom: 2,
                  child: Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(MyImage.profile),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  right: 0,
                  top: 120,
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileScreen()));
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: MyColor.eSeeAll,
                        child: Icon(Icons.edit,color: MyColor.whiteColor,size: 20,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Center(
                child: Text("MD Rafi Islam",style: regularTextStyle18.copyWith(color: MyColor.blackColor),)),
            const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1,089",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                    Text("275",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                    Text("10",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Followe ",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                    Text("Following",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                    Text("Events",style: regularTextStyle14.copyWith(color: MyColor.softBlackColor),),
                  ],
                ),
              ],
            ),
          ),
            const SizedBox(height: 10,),
            const Divider(),
          const SizedBox(height: 20,),
          Text("About Me",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                  text: "A drawer in Flutter is a sliding panel that appears from the side of the screen. It is typically used to provide navigation links, user profile information, or quick access to key features of an appA drawer in Flutter is a sliding panel that appears from the side of the screen. It is typically used to provide navigation links, user profile information, or quick access to key features of an app...",style: regularTextStyle14.copyWith(color: MyColor.greyColor),
                  children: [
                    TextSpan(
                      text: "Read More",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll)
                    ),
                  ]
                ),
            ),
            const SizedBox(height: 15,),
            Text("Interest",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 10,),
            Wrap(
              children: [
                Interest(
                    image: MyImage.musi1c,
                    title: "Des",
                    butonColor: MyColor.whiteColor
                ),
                Interest(
                    image: MyImage.art,
                    title: "Food",
                    butonColor: MyColor.whiteColor
                ),
                Interest(
                    image: MyImage.sports,
                    title: "Sports",
                    butonColor: MyColor.whiteColor
                ),
                Interest(
                    image: MyImage.music,
                    title: "Music",
                    butonColor: MyColor.whiteColor
                ),
                Interest(
                    image: MyImage.music,
                    title: "Music",
                    butonColor: MyColor.whiteColor
                ),
                Interest(
                    image: MyImage.music,
                    title: "Music",
                    butonColor: MyColor.whiteColor
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
