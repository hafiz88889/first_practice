import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/splash_screen/country_selection/screen/country_select.dart';
import 'package:flutter/material.dart';

class OnBrodingThree extends StatelessWidget {
  const OnBrodingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius:const  BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
            color: MyColor.splashBack
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Explore Upcoming and \n       Nearby Events",style: regularTextStyle18.copyWith(color: MyColor.whiteColor,fontSize: 26),),
            const SizedBox(height: 30,),
            Text("   Explore Upcoming and Nearby\nExplore  and Nearby fdff fdfdfdfdf",style: regularTextStyle14.copyWith(color: MyColor.whiteColor,),),
            const SizedBox(height: 50,),
            SizedBox(
              height: 60,
              width: 350,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CountrySelect()));
              },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  ),
                child: Text("GET STARTED",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)),
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
                  image: DecorationImage(image: AssetImage(MyImage.spBanner3),fit: BoxFit.cover))),

        ],
      ),
    );
  }
}
