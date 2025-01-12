import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/chatting_page_five/widget/image_row_widget.dart';
import 'package:event/ui/screen/chatting_page_six/member_page/member_page.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Image(image: AssetImage(MyImage.backArrowIcon),height: 20,width: 20,color: MyColor.searchText,)),
            Text("Details",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            IconButton(onPressed: (){}, icon: Image(image: AssetImage(MyImage.threeDotMenu),height: 20,width: 20,color: MyColor.searchText,))
          ],
        ),
      ),
      body:SingleChildScrollView(
        child:  Column(
          children: [
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage(MyImage.banner2),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text("Shere Bangla Consert",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Members",style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
                  const SizedBox(width: 15,),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage(MyImage.profile),
                      ),
                      Positioned(
                        left: 15,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage:
                          AssetImage(MyImage.profile),
                        ),
                      ),
                      Positioned(
                        left: 28,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage:
                          AssetImage(MyImage.profile),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage:
                          AssetImage(MyImage.profile),
                        ),
                      ),
                      Positioned(
                        left: 57,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: MyColor.eSeeAll,
                          child: Text(
                            "5K+",
                            style: regularTextStyle14.copyWith(
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemberPage()));
                      },
                      child: Text("VIEW ALL / INVITE",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll,fontSize: 10,),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Photos and Videos",style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
                ],
              ),
            ),
            Padding(
              padding:const  EdgeInsets.all(10),
              child: Wrap(
                children: [
                  ImageRowWidget(image: MyImage.one),
                  ImageRowWidget(image: MyImage.two),
                  ImageRowWidget(image: MyImage.three),
                  ImageRowWidget(image: MyImage.four),
                  ImageRowWidget(image: MyImage.five),
                  ImageRowWidget(image: MyImage.six),
                  ImageRowWidget(image: MyImage.seven),
                  ImageRowWidget(image: MyImage.eight),
                  ImageRowWidget(image: MyImage.nine),
                  ImageRowWidget(image: MyImage.ten),
                  ImageRowWidget(image: MyImage.eleven),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
