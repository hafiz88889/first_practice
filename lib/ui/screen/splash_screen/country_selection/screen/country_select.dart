import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/home_sceen/screen_page/home_page.dart';
import 'package:event/ui/screen/splash_screen/country_selection/widget/widget.dart';
import 'package:flutter/material.dart';

class CountrySelect extends StatefulWidget {
  const CountrySelect({super.key});

  @override
  State<CountrySelect> createState() => _CountrySelectState();
}
class _CountrySelectState extends State<CountrySelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.softBlackColor,height: 25,width: 25,)),
            Text("Country Selection",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            Image(image: AssetImage(MyImage.threeDotMenu),color: MyColor.softBlackColor,height: 25,width: 25,),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
          } ,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
              ),
              child: Text("SAVE",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0.001,
                    blurRadius: 10,
                    color: MyColor.greyColor.withAlpha(50)
                  )
                ]
              ),
              child:SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find Conversation",hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor.withAlpha(100)),
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage(MyImage.searchIcon),color: MyColor.eSeeAll,height: 15,width: 15,),
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),
            Items(image: MyImage.flagOne, title: "Bangladesh"),
            const SizedBox(height: 10,),


          ],
        ),
      ),
      ),
    );
  }
}
