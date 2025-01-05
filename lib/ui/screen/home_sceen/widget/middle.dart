import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class Middle extends StatefulWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  const Middle({super.key,
  required this.image,
  required this.title1,
  required this.title2,
  required this.title3,
  });

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 320,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        // image: DecorationImage(image: AssetImage(MyImage.banner),),
        color: MyColor.whiteColor,
        border: Border.all(
            color: MyColor.whiteColor, width: 8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: Container(
                  padding:const  EdgeInsets.all(10),
                  margin: const EdgeInsets.all(15),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.blackColor,
                  ),
                  child: Image(image: AssetImage(MyImage.love)),
                ),
              )
            ],
          ),
          Text(
            widget.title1,
            maxLines: 1,
            style: regularTextStyle18.copyWith(
                color: MyColor.blackColor),
          ),
          const  SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image(
                image: AssetImage(MyImage.dateIcon),
                height: 15,
                width: 15,
              ),
              const SizedBox(width: 10,),
              Text(
                widget.title2,
                style: regularTextStyle14.copyWith(
                    color: MyColor.searchText,
                    fontSize: 11),
              ),
              const SizedBox(width: 8,),
              Icon(
                Icons.location_on,
                size: 15,
                color: MyColor.eSeeAll,
              ),
              Text(
               widget.title3,
                style: regularTextStyle14.copyWith(
                    color: MyColor.searchText,
                    fontSize: 11),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage(MyImage
                        .profile), // Replace with your image path
                  ),
                  Positioned(
                    left: 15,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                          MyImage
                              .profile), // Replace with your image path
                    ),
                  ),
                  const Positioned(
                    left: 28,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor:
                      Colors.orange,
                      child: Text(
                        '+50',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const  SizedBox(
                width: 40,
              ),
              Text('Members joined',
                  style:
                  regularTextStyle14.copyWith(
                      fontSize: 12,
                      color:
                      MyColor.searchText)),
              const  SizedBox(width: 12,),
              SizedBox(
                  height: 35,
                  width: 110,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                      onPressed: () {},
                      child: Text("Join Now",style: regularTextStyle14.copyWith(color: MyColor.whiteColor,fontSize: 12))))
            ],
          )
        ],
      ),
    );
  }
}
