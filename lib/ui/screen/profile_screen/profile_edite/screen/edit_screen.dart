import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/profile_screen/profile_edite/widget/text_form_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
      bottomNavigationBar: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
              child: Text("SAVE CHANGE",
                style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
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
              ],
            ),
           const  TextFormWidget(title1: "Full Name", title2: "Md Rafi Islam", icon: Text("")),
            const SizedBox(height: 20,),
            TextFormWidget(title1: "Date of Birth", title2: "18 February 2001", icon: Icon(Icons.calendar_month,color: MyColor.greyColor.withAlpha(200),)),
            const SizedBox(height: 20,),
            TextFormWidget(title1: "Location ", title2: "Uttara,Dhaka,Bangladesh", icon: Icon(Icons.location_on,color: MyColor.greyColor.withAlpha(200))),
            const SizedBox(height: 20,),
            TextFormWidget(title1: "Interested Event", title2: "Design,art,shop,music", icon: Icon(Icons.interests,color: MyColor.greyColor.withAlpha(200))),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      ),
    );
  }
}
