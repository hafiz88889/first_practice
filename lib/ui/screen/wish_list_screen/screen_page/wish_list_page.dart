import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({super.key});

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 30,
                  color: MyColor.blackColor,
                ),
              ),
              Text(
                "Wish List",
                style: regularTextStyle18.copyWith(
                    color: MyColor.blackColor, fontSize: 22),
              ),

              Icon(
                Icons.more_vert_outlined,
                size: 30,
                color: MyColor.blackColor,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Image(image: AssetImage(MyImage.banner),height: 250,width: double.infinity,),
          Container(
            height: 3,
            width: double.infinity,
            color: MyColor.eTopBackColor,
          ),
          Text("Nothing on your wishlish yet",style: regularTextStyle16.copyWith(color: MyColor.eTopBackColor,fontSize: 22),),
          const SizedBox(height: 20,),
          Text("Lorem ipsum dolor sit amet, consectur \n adipiscing elit sed do eiusmod tempor",style: regularTextStyle14.copyWith(color: MyColor.searchText),),
          Spacer(),
          SizedBox(
            height: 60,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
                onPressed: () {},
                child: Text(
                  "EXPLORE EVENTS",
                  style: regularTextStyle14.copyWith(color: MyColor.whiteColor,fontWeight: FontWeight.normal),
                )),
          )
        ],
      ),
    );
  }
}
