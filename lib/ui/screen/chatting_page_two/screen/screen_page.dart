import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      // appBar: AppBar(
      //   backgroundColor: MyColor.whiteColor,
      //   title: Row(
      //     children: [
      //       Text("Shere Bangla Consert",style: hedingText,)
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Stack(
             clipBehavior: Clip.none,
             children: [
               Container(
                 height: 150,
                 width: double.infinity,
                 decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage(MyImage.banner),fit: BoxFit.cover)
                 ),
               ),
               Positioned(
                 top: 50,
                 child: Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color: MyColor.eTopBackColor,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                   ),
                   child: Center(child: Column(
                     children: [
                       const SizedBox(height: 20,),
                       Container(
                         height: 5,
                         width: 60,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: MyColor.whiteColor,
                         ),
                       ),
                       const SizedBox(height: 15,),
                       Text("Message",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                     ],
                   ),),
                 ),
               )
             ],
           ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              width: double.infinity,
              color: MyColor.whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shere Bangla Concert",style: regularTextStyle16,),
                  Image(image: AssetImage(MyImage.threeDotMenu),height: 25,width: 25,)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),topRight: Radius.circular(25)),
                      color: MyColor.eSeeAll
                  ),
                  child: Text("This is nor more here ",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),topRight: Radius.circular(25)),
                      color: MyColor.eSeeAll
                  ),
                  child: Text("This is nor more here ",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
