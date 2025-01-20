import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/splash_screen/onbroding_one/onbroding_page.dart';
import 'package:event/ui/screen/splash_screen/onbroding_three/onbroding_page.dart';
import 'package:flutter/material.dart';

class OnbrodingTwo extends StatelessWidget {
  const OnbrodingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            color: MyColor.splashBack
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Explore Upcoming and \n       Nearby Events",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 26),),
            const SizedBox(height: 30,),
            Text("   Explore Upcoming and Nearby\nExplore  and Nearby fdff fdfdfdfdf",style: regularTextStyle14.copyWith(color: MyColor.whiteColor,),),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnbrodingPage()));
                } , child: Text("Skip",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
                const Spacer(),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: MyColor.whiteColor,),
                const SizedBox(width: 10,),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: MyColor.whiteColor,),
                const SizedBox(width: 10,),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: MyColor.whiteColor,),
                const Spacer(),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBrodingThree ()));
                } , child: Text("Next",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(MyImage.spBanner2),fit: BoxFit.cover))),

        ],
      ),
    );
  }
}
