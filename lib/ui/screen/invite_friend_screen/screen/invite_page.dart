import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/invite_friend_screen/widget/cardInvite.dart';
import 'package:flutter/material.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child:SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35,),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close,color: MyColor.blackColor,)),
              const SizedBox(height: 10,),
              Text("Invite Friends",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: MyColor.greyColor.withAlpha(100),
                          blurRadius:5,
                          spreadRadius: 0.002
                      )
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image(image: AssetImage(MyImage.searchIcon),color: MyColor.eSeeAll,height: 20,width: 20,),
                      ),
                      hintText: "Search...",hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(100),),
                      filled: true,fillColor: MyColor.whiteColor
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
              const SizedBox(height: 10,),
              Cardinvite(image: MyImage.profile, title1: "Md hafizur ", title2: "2K followers", image2: MyImage.me1, title3: "Karim", title4: "5K followers"),
            ],
          ),
        )
      ),
    );
  }
}
